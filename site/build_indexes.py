#!/usr/bin/env python3
import os


root = os.path.dirname(__file__)


def get_single_frontmatter(file):
    frontmatter_opened = False
    frontmatter = []
    with open(file) as input_data:
        for line in input_data:
            if not line.startswith('outputs'):
                frontmatter.append(line)
            if line.strip() == '+++':
                if not frontmatter_opened:
                    frontmatter_opened = True
                else:
                    break
    return frontmatter


def get_frontmatters():
    frontmatters = {}
    pres_root = (f"{root}/presentations/content")
    pres_dirs = [presentation[0] for presentation in os.walk(pres_root)]
    for pres_dirs in pres_dirs:
        if not pres_dirs.endswith('content'):
            pres_name = pres_dirs.split('/')[-1]
            frontmatters[pres_name] = get_single_frontmatter(
                f'{pres_dirs}/_index.md')
    return frontmatters


if __name__ == "__main__":
    for presentation, frontmatter in get_frontmatters().items():
        pres_index = f'{root}/main/content/presentations/{presentation}.md'
        with open(pres_index, 'w') as index:
            for line in frontmatter:
                index.write(line)
            index.write("HACKY INDEX")

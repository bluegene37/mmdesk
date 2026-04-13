with open('lib/features/home/presentation/home_screen.dart', 'r') as f:
    content = f.read()

# Add import for dynamic menu
import_dynamic = "import 'package:mmdesk/features/home/presentation/widgets/dynamic_menu.dart';\n"

# We want to replace the static MenuBar with DynamicMenuBar()
target_block = '''            child: Theme(
              data: Theme.of(context).copyWith(
                menuTheme: const MenuThemeData(
                  style: MenuStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    elevation: MaterialStatePropertyAll(4),
                  ),
                ),
              ),
              child: MenuBar(
                style: const MenuStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.transparent),
                  elevation: MaterialStatePropertyAll(0),
                  padding: MaterialStatePropertyAll(EdgeInsets.zero),
                ),
                children: [
                  const _FileMenuButton(),
                  const _SchedulesMenuButton(),
                  const _ToolsMenuButton(),
                  const _HelpMenuButton(),
                ],
              ),
            ),'''

replacement_block = "            child: const DynamicMenuBar(),"

new_content = content.replace(target_block, replacement_block)
new_content = import_dynamic + new_content

# remove the static classes from the end of the file.
start_idx = new_content.find('class _FileMenuButton extends ConsumerWidget {')
if start_idx != -1:
    new_content = new_content[:start_idx]

with open('lib/features/home/presentation/home_screen.dart', 'w') as f:
    f.write(new_content)


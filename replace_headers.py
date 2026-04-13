import glob
import re

files = glob.glob('lib/features/schedules/presentation/dialogs/*.dart')
files += glob.glob('lib/features/contacts/presentation/*.dart')

for path in files:
    with open(path, 'r') as f:
        content = f.read()

    header_idx = content.find('// Header')
    if header_idx == -1:
        continue
    
    container_start = content.find('Container(', header_idx)
    if container_start == -1:
        continue
        
    open_brackets = 0
    container_end = -1
    for i in range(container_start, len(content)):
        if content[i] == '(':
            open_brackets += 1
        elif content[i] == ')':
            open_brackets -= 1
            if open_brackets == 0:
                container_end = i + 1
                break
    
    if container_end != -1:
        header_block = content[container_start:container_end]
        
        match = re.search(r"Icon\(Icons\.(\w+),\s*size:\s*\d+,\s*color:\s*([^\)]+)\)", header_block)
        title_match = re.search(r"Text\('([^']+)'", header_block)
        
        if match and title_match:
            icon = match.group(1)
            color = match.group(2)
            title = title_match.group(1)
            
            replacement = f"const PlatformDialogHeader(title: '{title}', icon: Icons.{icon}, iconColor: {color})"
            new_content = content[:container_start] + replacement + content[container_end:]
            
            if "platform_dialog_header.dart" not in new_content:
                # Add import right after the last import
                last_import = new_content.rfind("import '")
                if last_import != -1:
                    end_of_line = new_content.find('\n', last_import)
                    new_content = new_content[:end_of_line+1] + "import 'package:mmdesk/core/widgets/platform_dialog_header.dart';\n" + new_content[end_of_line+1:]
                else:
                    new_content = "import 'package:mmdesk/core/widgets/platform_dialog_header.dart';\n" + new_content
            
            with open(path, 'w') as f:
                f.write(new_content)


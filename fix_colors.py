import glob

files = glob.glob('lib/features/schedules/presentation/dialogs/*.dart')
files += glob.glob('lib/features/contacts/presentation/*.dart')

for path in files:
    with open(path, 'r') as f:
        content = f.read()

    # The issue is `const Colors.grey.shade50` is invalid Dart. It should just be `Colors.grey.shade50` (without const).
    content = content.replace('const Colors.grey.shade100', 'Colors.grey.shade100')
    content = content.replace('const Colors.grey.shade50', 'Colors.grey.shade50')
    content = content.replace('const Colors.blue.shade50', 'Colors.blue.shade50')
    content = content.replace('const Colors.grey.shade300', 'Colors.grey.shade300')
    
    with open(path, 'w') as f:
        f.write(content)

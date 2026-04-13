import glob

files = glob.glob('lib/features/schedules/presentation/dialogs/*.dart')
files += glob.glob('lib/features/contacts/presentation/*.dart')

for path in files:
    with open(path, 'r') as f:
        content = f.read()

    # The issue is accessing .shade variants in a const expression or similar contexts
    # where the compiler is strict. The easiest robust fix is to remove 'const' 
    # anywhere before Colors.grey or Colors.blue, but Python replace is brittle.
    # Let's just aggressively remove const before Color usage that has .shade
    content = content.replace('const Colors.grey.shade50', 'Colors.grey.shade50')
    content = content.replace('const Colors.grey.shade100', 'Colors.grey.shade100')
    content = content.replace('const Colors.grey.shade300', 'Colors.grey.shade300')
    content = content.replace('const Colors.blue.shade50', 'Colors.blue.shade50')
    content = content.replace('const Colors.blueGrey', 'Colors.blueGrey')
    
    with open(path, 'w') as f:
        f.write(content)


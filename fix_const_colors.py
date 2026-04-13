import glob

files = glob.glob('lib/features/schedules/presentation/dialogs/*.dart')
files += glob.glob('lib/features/contacts/presentation/*.dart')

for path in files:
    with open(path, 'r') as f:
        content = f.read()

    # The compiler is complaining because `Colors.grey.shade50` is not a compile-time constant.
    # Therefore, we need to strip `const` from decorators like `BoxDecoration`, `Color(0xFF...)` and variables wrapping these shades.
    
    # Strip const from BoxDecorations that might contain these shades
    content = content.replace('const BoxDecoration(', 'BoxDecoration(')
    content = content.replace('const TextStyle(color: Colors.blue.shade50', 'TextStyle(color: Colors.blue.shade50')
    content = content.replace('const TextStyle(color: Colors.grey.shade', 'TextStyle(color: Colors.grey.shade')
    content = content.replace('const BorderSide(color: Colors.grey.shade', 'BorderSide(color: Colors.grey.shade')
    content = content.replace('const Border(', 'Border(')
    content = content.replace('const Color', 'Color')
    
    with open(path, 'w') as f:
        f.write(content)


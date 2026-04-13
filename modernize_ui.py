import os
import glob

# Gather all the dialog files we created
files = glob.glob('lib/features/schedules/presentation/dialogs/*.dart')
files += glob.glob('lib/features/contacts/presentation/*.dart')

for path in files:
    with open(path, 'r') as f:
        content = f.read()

    # Replace Windows XP-era blue and yellow colors with modern SaaS greys and blues
    content = content.replace('Color(0xFFBED2F3)', 'Colors.grey.shade100')
    content = content.replace('Color(0xFFE3EAF6)', 'Colors.grey.shade50')
    content = content.replace('Color(0xFFFFD580)', 'Colors.blue.shade50')
    
    # Soften the harsh black borders to a modern light grey
    content = content.replace('Colors.black12', 'Colors.grey.shade300')
    content = content.replace('Colors.black26', 'Colors.grey.shade300')
    
    # Swap out some of the aggressive red/blue icon colors for more subtle tones 
    # except where they denote explicit destructive actions like "Close"
    content = content.replace('color: Colors.blue, fontWeight: FontWeight.bold', 'color: Colors.black87, fontWeight: FontWeight.w600')
    content = content.replace('Icon(Icons.folder, size: 16, color: Colors.red)', 'Icon(Icons.folder, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.flight, size: 16, color: Colors.blue)', 'Icon(Icons.flight, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.badge, size: 16, color: Colors.red)', 'Icon(Icons.badge, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.business, size: 16, color: Colors.red)', 'Icon(Icons.business, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.person, size: 16, color: Colors.red)', 'Icon(Icons.person, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.gavel, size: 16, color: Colors.red)', 'Icon(Icons.gavel, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.list, size: 16, color: Colors.red)', 'Icon(Icons.list, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.list_alt, size: 16, color: Colors.red)', 'Icon(Icons.list_alt, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.bolt, size: 16, color: Colors.red)', 'Icon(Icons.bolt, size: 20, color: Colors.amber)')
    content = content.replace('Icon(Icons.description, size: 16, color: Colors.blue)', 'Icon(Icons.description, size: 20, color: Colors.blueGrey)')
    content = content.replace('Icon(Icons.folder_open, size: 16, color: Colors.blue)', 'Icon(Icons.folder_open, size: 20, color: Colors.blueGrey)')
    
    # Modernize window controls (minimize/maximize/close)
    content = content.replace('Icon(Icons.minimize, size: 16)', 'Icon(Icons.remove, size: 16, color: Colors.black54)')
    content = content.replace('Icon(Icons.crop_square, size: 16)', 'Icon(Icons.crop_din, size: 16, color: Colors.black54)')
    content = content.replace('Icon(Icons.close, size: 16)', 'Icon(Icons.close, size: 16, color: Colors.black54)')
    
    # Soften Table/List headers
    content = content.replace("style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.blue)", "style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black87)")
    
    with open(path, 'w') as f:
        f.write(content)


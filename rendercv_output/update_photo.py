"""
Crop 481193015_2450922415244303_6756899167528948330_n.jpg into a circular 500x500 headshot.
"""
from PIL import Image, ImageDraw
import os

# Open the image
img_path = os.path.join(os.path.dirname(__file__), "..", "481193015_2450922415244303_6756899167528948330_n.jpg")
img = Image.open(img_path)
print(f"Original size: {img.size}")

# Crop to center square
crop_size = min(img.size)
left = (img.size[0] - crop_size) // 2
top = (img.size[1] - crop_size) // 2
cropped = img.crop((left, top, left + crop_size, top + crop_size))
print(f"Cropped size: {cropped.size}")

# Resize to 500x500
resized = cropped.resize((500, 500), Image.LANCZOS)
print(f"Resized to: {resized.size}")

# Create circular mask
mask = Image.new("L", (500, 500), 0)
draw = ImageDraw.Draw(mask)
draw.ellipse((0, 0, 500, 500), fill=255)

# Apply mask and save as PNG with alpha
output = Image.new("RGBA", (500, 500), (0, 0, 0, 0))
output.paste(resized, (0, 0), mask)

output_path = os.path.join(os.path.dirname(__file__), "profile_photo.png")
output.save(output_path)
print(f"Saved to: {output_path}")
print(f"File exists: {os.path.exists(output_path)}")
print(f"File size: {os.path.getsize(output_path)}")
print("Done!")

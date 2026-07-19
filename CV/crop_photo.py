"""
Crop DSC05851_preview.jpeg into a circular 500x500 headshot.
The face is described as being in the upper-center-left area with balloons.
"""

from PIL import Image, ImageDraw

# Open the image
img_path = "rendercv_output/DSC05851_preview.jpeg"
img = Image.open(img_path)
print(f"Original size: {img.size}")  # 2160 x 1440

# The image is 2160x1440 (landscape).
# Face is described as "upper-center-left" area.
# Let's center the crop around the face with some breathing room.
# Guessing face center at roughly (x=850, y=520) based on "upper-center-left"
# in a 2160x1440 image.

# Square crop size - leave breathing room around the face
crop_size = 800  # square side length

# Center of the crop (adjust these if the face isn't centered)
center_x = 850
center_y = 520

# Calculate crop box
left = center_x - crop_size // 2
top = center_y - crop_size // 2
right = left + crop_size
bottom = top + crop_size

print(f"Crop box: left={left}, top={top}, right={right}, bottom={bottom}")

# Crop to square
cropped = img.crop((left, top, right, bottom))
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

output_path = "profile_photo.png"
output.save(output_path)
print(f"Saved to: {output_path}")
print("Done!")

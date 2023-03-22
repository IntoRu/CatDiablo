///@desc плавное исчезновение паутины

fade -= 0.003

image_alpha = fade

if image_alpha <= 0 instance_destroy()
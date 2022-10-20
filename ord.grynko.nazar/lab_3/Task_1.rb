A = true
B = true
C = true
X = -40
Y = 6
Z = -12

# task 1.5.a = false
print !(A||B)&&(A&&!B), "\n"

# task 1.5.b = true (Has failure in exercise: changed >= on ==)
print (Z != Y) == (6 >= Y) && A || B && C && X >= 1.5, "\n"

# task 1.5.c = true
print (8 - X**2 <= Z) && (X**2 != Y**2) || (Z >= 15), "\n"

# task 1.5.d = true
print X > 0 && Y < 0 || Z >= (X * Y + (-Y / X)) - (-Z), "\n"

# task 1.5.e = false
print !(A || B && !(C || (!A || B))), "\n"

# task 1.5.f = false
print X**2 + Y**2 >= 1 && X >= 0 && Y >= 0, "\n"

# task 1.5.g = true
print (A && (C && B != B || A) || C) && B, "\n"

X_ = -0.5
P_ = true

# 2.a = false
print ((Math.log2(X_ + 1) > X_) || !P_) && (Math.sqrt(X_) < X_**2 + X_) || (2 * X_ == X_)
(**
Safe division between floats. Returns {!None} if
the the divisor is 0.0

{[
safe_div 5.0 0.0
]}
*)
val safe_div : float -> float -> float option

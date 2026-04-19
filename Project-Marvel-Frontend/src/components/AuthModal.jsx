import { useState } from "react";
import API from "../services/api";
import {FaEye, FaEyeSlash, FaFacebookF} from "react-icons/fa";
import {FcGoogle} from "react-icons/fc";

function AuthModal() {
  const [isLogin, setIsLogin] = useState(true);
  const [showPassword, setShowPassword] = useState(false);

  const [user, setUser] = useState({
    name: "",
    email: "",
    password: "",
  });

  const handleSubmit = () => {
    if (isLogin) {
      API.post("/auth/login", user)
        .then((res) => {
          localStorage.setItem("token", res.data.token);
          localStorage.setItem("user", JSON.stringify(res.data));
          alert("Login Success ✅");
        })
        .catch(() => alert("Error ❌"));
    } else {
      API.post("/auth/register", user)
        .then(() => alert("Registered ✅"))
        .catch(() => alert("Error ❌"));
    }
  };

  return (
    <div className="modal fade" id="authModal">
      <div className="modal-dialog modal-dialog-centered">
        <div className="modal-content p-4 auth-box">

          {/* Title */}
          <h2 className="text-center mb-4">
            {isLogin ? "Log in" : "Register"}
          </h2>

          {/* Social Buttons */}
          <div className="d-flex gap-2 mb-3">
            <button className="btn social-btn google w-50">
              <FcGoogle size={20} />
            </button>

            <button className="btn social-btn facebook w-50">
              <FaFacebookF size={20} />
            </button>
          </div>

          {/* Divider */}
          <div className="divider">
            <span>or</span>
          </div>

          {/* Name (Register only) */}
          {!isLogin && (
            <input
              className="form-control my-2"
              placeholder="Name"
              onChange={(e) =>
                setUser({ ...user, name: e.target.value })
              }
            />
          )}

          {/* Email */}
          <label>Email address</label>
          <input
            className="form-control my-2"
            placeholder="Enter email"
            onChange={(e) =>
              setUser({ ...user, email: e.target.value })
            }
          />

          {/* Password */}
          <label>Password</label>
          <div className="password-box">
            <input
              type={showPassword ? "text" : "password"}
              className="form-control password-input"
              placeholder="Enter password"
              onChange={(e) =>
                setUser({ ...user, password: e.target.value })
              }
            />

            <span
              className="eye-icon"
              onClick={() => setShowPassword(!showPassword)}
            >
              {showPassword ? <FaEyeSlash /> : <FaEye />}
            </span>
          </div>

          {/* Forgot */}
          {isLogin && (
            <p className="forgot">Forgot password?</p>
          )}

          {/* Button */}
          <button className="btn gradient-btn mt-3" onClick={handleSubmit}>
            {isLogin ? "Log in" : "Register"}
          </button>

          {/* Switch */}
          <p className="text-center mt-3">
            {isLogin
              ? "Don't have an account?"
              : "Already have an account?"}
            <span
              className="switch-link"
              onClick={() => setIsLogin(!isLogin)}
            >
              {isLogin ? " Sign Up" : " Login"}
            </span>
          </p>

        </div>
      </div>
    </div>
  );
}

export default AuthModal;
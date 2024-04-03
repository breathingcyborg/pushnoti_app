import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  

  Future<UserCredential> loginWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    var creds = await FirebaseAuth.instance.signInWithCredential(credential);
    return creds;
  }

  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  Future<String?> getIdToken([bool forceRefresh = false]) async {
    var result = await FirebaseAuth.instance.currentUser?.getIdToken(forceRefresh);
    return result;
  }

  Future<IdTokenResult?> getIdTokenResult() async {
    var result = await FirebaseAuth.instance.currentUser?.getIdTokenResult();
    return result;
  }

  Future<Map<String, dynamic>?> getCustomClaims() async {
    var result = await FirebaseAuth.instance.currentUser?.getIdTokenResult();
    return result?.claims;
  }

  Future<String?> getNotimail() async {
    var claims = await getCustomClaims();
    if (claims == null) {
      return null;
    }
    return claims['notimail'];
  }

  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }

  Stream<User?> authStateChanges() => FirebaseAuth.instance.authStateChanges();
}
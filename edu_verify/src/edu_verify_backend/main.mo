module CertificateAuthenticator {
  public type Certificate = Text;

  // Function to add a certificate to the system.
  
  // Function to verify if a certificate is valid.

 

  // Initialize an empty set to store certificates.
  var certificates : HashSet<CertificateAuthenticator.Certificate> = HashSet.init<Text>();

  // Function to add a certificate to the system.
  public func addCertificate(certificate: CertificateAuthenticator.Certificate) : async Bool {
    // Check if the certificate is already in the set.
    if (HashSet.contains(certificates, certificate)) {
      return false; // Certificate already exists.
    } else {
      HashSet.insert(certificates, certificate);
      return true; // Certificate added successfully.
    }
  };

  // Function to verify if a certificate is valid.
  public func verifyCertificate(certificate: CertificateAuthenticator.Certificate) : async Bool {
    return HashSet.contains(certificates, certificate);
  }
}

interface envTypes {
    googleClientId : string;
    googleClientSecret : string;
    apiUrl : string;
}

export const envValues : envTypes = {
    googleClientId : process.env.GOOGLE_CLIENT_ID || "",
    googleClientSecret : process.env.GOOGLE_CLIENT_SECRET || "",
    apiUrl : process.env.NEXT_PUBLIC_API_BASE_URL || "",
}
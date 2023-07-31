
export default async function handler(req, res) {
    // to be implemented: check also whather the model is uploaded to the minio server
    // check whather the flask server is running
    const response = await fetch('flask:5000');
    if (response.status === 200) {
        return res.status(200).json({ state: true });
    }
    return res.status(200).json({ state: false });
}
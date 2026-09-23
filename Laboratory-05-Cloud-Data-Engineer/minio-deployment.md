
# MinIO Deployment

## Technical Deployment Steps

### 1. Deploy the MinIO Server

A KillerCoda Ubuntu Playground was launched and Docker was used to deploy the MinIO S3-compatible object storage server.

The exact Docker command provided in the laboratory activity was:

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
minio/minio server /data --console-address ":9001"
```

The command downloads the MinIO Docker image if it is not already available, creates a container named `minio-server`, and starts the MinIO object storage server in detached mode.

### 2. Port Configuration

Two ports were mapped when the container was deployed:

| Port     | Purpose           |
| -------- | ----------------- |
| **9000** | MinIO S3 API      |
| **9001** | MinIO Web Console |

The **Web Console was accessed using port 9001** through the KillerCoda Playground's Traffic / Ports or Custom Ports feature.

### 3. MinIO Login Credentials

The credentials configured in the Docker command were:

* **Username:** `cloudadmin`
* **Password:** `CloudNova2026!`

These credentials were defined through the `MINIO_ROOT_USER` and `MINIO_ROOT_PASSWORD` environment variables.

### 4. Explanation of the `-e` Flags

The `-e` option in Docker is used to define an **environment variable** inside the container.

The command contains two `-e` flags:

```bash
-e "MINIO_ROOT_USER=cloudadmin"
```

This sets the MinIO administrator username to **`cloudadmin`**.

```bash
-e "MINIO_ROOT_PASSWORD=CloudNova2026!"
```

This sets the MinIO administrator password to **`CloudNova2026!`**.

These environment variables allow the MinIO server to use the specified administrator credentials when the container starts.

### 5. Verify the Container

The MinIO container was verified using:

```bash
docker ps
```

The running container should appear with the name:

```text
minio-server
```

The port mappings should also show:

```text
9000->9000
9001->9001
```

### 6. Access the MinIO Web Console

The KillerCoda **Traffic / Ports** or **Custom Ports** feature was used to access port **9001**.

After opening the forwarded port, the MinIO Web Console login page was displayed. The configured administrator credentials were then used to log in.

### 7. Create the Storage Bucket

Inside the MinIO Web Console, the following bucket was created:

```text
client-photos
```

The `client-photos` bucket is intended to store the client's user-uploaded photos.

### 8. Upload a Test Object

After creating the `client-photos` bucket, a sample image or text file was uploaded using the **Upload** button.

The successful bucket creation and uploaded object were documented using a screenshot saved as:

```text
screenshots/minio-bucket-upload.png
```

### Deployment Evidence

The terminal screenshot showing the successful MinIO deployment and running container was saved as:

```text
screenshots/minio-deployed.png
```

The MinIO Web Console screenshot showing the `client-photos` bucket and uploaded file was saved as:

```text
screenshots/minio-bucket-upload.png
```

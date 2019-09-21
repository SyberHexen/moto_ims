.class public Lcom/qualcomm/ims/vt/CameraActionSoundHelper;
.super Ljava/lang/Object;
.source "CameraActionSoundHelper.java"


# instance fields
.field mActionSound:Landroid/media/MediaActionSound;

.field mContext:Landroid/content/Context;

.field private mIsClosed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mIsClosed:Z

    .line 28
    if-nez p1, :cond_0

    .line 29
    const-string v0, "Ctor: Context is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    const-string v0, "close: Releasing resources"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mIsClosed:Z

    .line 69
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mIsClosed:Z

    return v0
.end method

.method public onRecordingStarted()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    const-string v0, "onRecordingStarted:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 83
    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    const-string v0, "onRecordingStopped:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 97
    return-void
.end method

.method public open()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f010002

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    .line 50
    :cond_1
    const-string v0, "open: Loading media files."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 52
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 53
    return-void
.end method

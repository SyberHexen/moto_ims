.class Lcom/qualcomm/ims/vt/MediaController$6;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->maybeDeInitializeMedia(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/MediaController;

    .line 492
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$6;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$6;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->access$000(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsMedia;->deInit()V

    .line 496
    return-void
.end method

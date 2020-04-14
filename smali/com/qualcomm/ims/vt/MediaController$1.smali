.class Lcom/qualcomm/ims/vt/MediaController$1;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;Landroid/view/Surface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/MediaController;

    .line 114
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$surface:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$1;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->access$000(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/MediaController$1;->val$surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->setSurface(Landroid/view/Surface;)V

    .line 118
    return-void
.end method

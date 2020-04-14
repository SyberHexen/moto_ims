.class Lcom/qualcomm/ims/vt/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/MediaController;

.field final synthetic val$rotation:I


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/MediaController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/MediaController;

    .line 126
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$2;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    iput p2, p0, Lcom/qualcomm/ims/vt/MediaController$2;->val$rotation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$2;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/MediaController;->access$000(Lcom/qualcomm/ims/vt/MediaController;)Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/MediaController$2;->val$rotation:I

    invoke-static {v1}, Lcom/qualcomm/ims/vt/CvoUtil;->toOrientation(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsMedia;->sendCvoInfo(I)V

    .line 130
    return-void
.end method

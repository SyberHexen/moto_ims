.class Lcom/qualcomm/ims/vt/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;)V
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

    .line 221
    iput-object p1, p0, Lcom/qualcomm/ims/vt/MediaController$4;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/qualcomm/ims/vt/MediaController$4;->this$0:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v1, 0x0

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->access$300(Lcom/qualcomm/ims/vt/MediaController;Landroid/graphics/Bitmap;)V

    .line 226
    return-void
.end method

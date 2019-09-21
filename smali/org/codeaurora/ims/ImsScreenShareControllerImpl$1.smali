.class Lorg/codeaurora/ims/ImsScreenShareControllerImpl$1;
.super Ljava/lang/Object;
.source "ImsScreenShareControllerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsScreenShareControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsScreenShareControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    .line 26
    iput-object p1, p0, Lorg/codeaurora/ims/ImsScreenShareControllerImpl$1;->this$0:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/codeaurora/ims/ImsScreenShareControllerImpl$1;->this$0:Lorg/codeaurora/ims/ImsScreenShareControllerImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsScreenShareControllerImpl;->access$000(Lorg/codeaurora/ims/ImsScreenShareControllerImpl;)V

    .line 30
    return-void
.end method

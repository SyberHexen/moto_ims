.class Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;
.super Ljava/lang/Object;
.source "ImsMultiIdentityImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsMultiIdentityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    .line 39
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiIdentityImpl$1;->this$0:Lorg/codeaurora/ims/ImsMultiIdentityImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsMultiIdentityImpl;->access$000(Lorg/codeaurora/ims/ImsMultiIdentityImpl;)V

    .line 43
    return-void
.end method

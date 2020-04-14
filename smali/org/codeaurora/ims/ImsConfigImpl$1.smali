.class Lorg/codeaurora/ims/ImsConfigImpl$1;
.super Landroid/database/ContentObserver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 71
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$1;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I

    .line 75
    return-void
.end method

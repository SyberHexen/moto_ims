.class Lorg/codeaurora/ims/ImsConfigImpl$7;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->setVolteWfcProvisioningEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 848
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 850
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v1, "Enable VoLTE and WFC Provisioning"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0

    .line 855
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 856
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v3, v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 859
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v3, 0x1c

    invoke-virtual {v1, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(II)I

    move-result v0

    .line 860
    if-nez v0, :cond_1

    .line 861
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$7;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v1, v3, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->notifyProvisionedValueChanged(II)V

    .line 866
    .end local v0    # "result":I
    :cond_1
    return-void
.end method

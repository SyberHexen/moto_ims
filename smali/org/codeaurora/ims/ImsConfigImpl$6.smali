.class Lorg/codeaurora/ims/ImsConfigImpl$6;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->syncWfcMDN()V
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

    .line 796
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 798
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1700(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1800(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    move-result v0

    .line 800
    .local v0, "subid":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 801
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "syncWfcMDN invalid sub id"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    return-void

    .line 806
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/16 v2, 0x46

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsConfigImpl;->getConfigString(I)Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, "bp":Ljava/lang/String;
    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3, v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1900(Lorg/codeaurora/ims/ImsConfigImpl;I)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "ap":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncWfcMDN bp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", ap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 810
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncWfcMDN ap no value: bp->ap ap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    const-string v2, "wfc_ims_mdn"

    invoke-static {v0, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 813
    :cond_1
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 814
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncWfcMDN ap bp not equal bp: ap->bp, ap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$6;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v4, v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->setConfig(ILjava/lang/String;)I

    .line 817
    :cond_2
    :goto_0
    return-void
.end method

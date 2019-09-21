.class public Lorg/codeaurora/ims/QtiImsExtService;
.super Landroid/app/Service;
.source "QtiImsExtService.java"


# instance fields
.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createQtiImsExt()V
    .locals 2

    .line 29
    invoke-static {}, Lorg/codeaurora/ims/ImsService;->getServiceSubs()[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    .line 30
    .local v0, "imsServiceSubs":[Lorg/codeaurora/ims/ImsServiceSub;
    if-eqz v0, :cond_0

    .line 31
    new-instance v1, Lorg/codeaurora/ims/QtiImsExt;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsServiceSub;)V

    iput-object v1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "QtiImsExtService, ImsService is not yet started retry."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez v0, :cond_1

    .line 44
    const-string v0, "onBind returned null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 22
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    const-string v0, "QtiImsExtService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    .line 26
    return-void
.end method

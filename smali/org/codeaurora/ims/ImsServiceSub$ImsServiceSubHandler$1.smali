.class Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

.field final synthetic val$imsRadioTech:I

.field final synthetic val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field final synthetic val$registrationState:I


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "this$1"    # Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    .line 1545
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iput p2, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    iput p3, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    iput-object p4, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1548
    iget v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1556
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeringWithRadioTech(I)V

    goto :goto_0

    .line 1553
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1554
    goto :goto_0

    .line 1550
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$imsRadioTech:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registeredWithRadioTech(I)V

    .line 1551
    nop

    .line 1559
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->this$1:Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget v1, p0, Lorg/codeaurora/ims/ImsServiceSub$ImsServiceSubHandler$1;->val$registrationState:I

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1300(Lorg/codeaurora/ims/ImsServiceSub;I)V

    .line 1560
    return-void
.end method

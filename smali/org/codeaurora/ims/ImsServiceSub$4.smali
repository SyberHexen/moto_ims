.class Lorg/codeaurora/ims/ImsServiceSub$4;
.super Ljava/lang/Object;
.source "ImsServiceSub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsServiceSub;->handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 2360
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$4;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$4;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const-string v1, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1500(Lorg/codeaurora/ims/ImsServiceSub;Ljava/lang/String;)V

    .line 2364
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x578

    const/16 v2, 0x580

    const-string v3, "WiFi_Error09-Unable to connect"

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 2368
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$4;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsServiceSub;->access$1200(Lorg/codeaurora/ims/ImsServiceSub;)Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/ImsRegistrationImpl;->registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 2371
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$4;->this$0:Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v3, 0x2

    invoke-static {v1, v0, v3, v2}, Lorg/codeaurora/ims/ImsServiceSub;->access$1700(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;II)V

    .line 2375
    return-void
.end method

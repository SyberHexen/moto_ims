.class final Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;
.super Ljava/lang/Object;
.source "ImsSenderRxr.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImsRadioDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 386
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1
    .param p1, "cookie"    # J

    .line 392
    const-string v0, " IImsRadio Died"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioDeathRecipient;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->access$000(Lorg/codeaurora/ims/ImsSenderRxr;)V

    .line 394
    return-void
.end method

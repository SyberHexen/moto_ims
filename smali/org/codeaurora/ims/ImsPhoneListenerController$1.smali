.class Lorg/codeaurora/ims/ImsPhoneListenerController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsPhoneListenerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsPhoneListenerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsPhoneListenerController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsPhoneListenerController;

    .line 59
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;->this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneListenerController$1;->this$0:Lorg/codeaurora/ims/ImsPhoneListenerController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->access$000(Lorg/codeaurora/ims/ImsPhoneListenerController;)V

    .line 63
    return-void
.end method

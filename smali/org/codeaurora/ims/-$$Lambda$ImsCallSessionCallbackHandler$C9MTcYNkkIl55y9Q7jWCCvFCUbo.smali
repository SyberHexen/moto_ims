.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$1:I

    iput p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$2:I

    iput-object p4, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$3:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$1:I

    iget v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$2:I

    iget-object v3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$C9MTcYNkkIl55y9Q7jWCCvFCUbo;->f$3:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionHandover$4$ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

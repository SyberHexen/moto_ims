.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private final synthetic f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private final synthetic f$2:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput-object p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$2:Landroid/telephony/ims/ImsCallProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$1:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$eV1DIwoJO7vzBkpDyutHYP6WG4U;->f$2:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionMergeStarted$14$ImsCallSessionCallbackHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

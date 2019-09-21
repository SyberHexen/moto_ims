.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$1:I

    iput p3, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$1:I

    iget v2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$sB1JJtIKcCmIJSWLtqsS7A1N1Oc;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionMayHandover$6$ImsCallSessionCallbackHandler(II)V

    return-void
.end method

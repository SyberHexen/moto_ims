.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$qYCZqQ7BhTOA_JdJFcGAB4o9KfY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$qYCZqQ7BhTOA_JdJFcGAB4o9KfY;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-boolean p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$qYCZqQ7BhTOA_JdJFcGAB4o9KfY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$qYCZqQ7BhTOA_JdJFcGAB4o9KfY;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-boolean v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsCallSessionCallbackHandler$qYCZqQ7BhTOA_JdJFcGAB4o9KfY;->f$1:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionMultipartyStateChanged$22$ImsCallSessionCallbackHandler(Z)V

    return-void
.end method

.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsConfigImplOem;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsConfigImplOem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;->f$0:Lorg/codeaurora/ims/ImsConfigImplOem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsConfigImplOem$oehbF2Ay4egetEcoBFMiDAC3fhk;->f$0:Lorg/codeaurora/ims/ImsConfigImplOem;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsConfigImplOem;->lambda$updateImsSupportedServicesAndNotify$0$ImsConfigImplOem()V

    return-void
.end method

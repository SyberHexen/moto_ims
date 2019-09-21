.class public final synthetic Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

.field private final synthetic f$1:Landroid/telephony/ims/ImsSsData;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsUtListenerImpl;Landroid/telephony/ims/ImsSsData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;->f$1:Landroid/telephony/ims/ImsSsData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;->f$0:Lorg/codeaurora/ims/ImsUtListenerImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/-$$Lambda$ImsUtListenerImpl$qGq-9QKQgjclOsub0oc3TDlZGsc;->f$1:Landroid/telephony/ims/ImsSsData;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUtListenerImpl;->lambda$onSupplementaryServiceIndication$7$ImsUtListenerImpl(Landroid/telephony/ims/ImsSsData;)V

    return-void
.end method

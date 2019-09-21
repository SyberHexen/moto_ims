.class public Lorg/codeaurora/ims/WakeLockRegistrant;
.super Lorg/codeaurora/telephony/utils/Registrant;
.source "WakeLockRegistrant.java"


# static fields
.field public static final UNSOL_WAKELOCK_TIMEOUT_MS:J = 0xc8L

.field public static final WAKELOCK_NAME:Ljava/lang/String; = "NotifyRegistrantLock"


# instance fields
.field private mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockTimeOut:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;)V
    .locals 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "context"    # Landroid/content/Context;

    .line 73
    const-wide/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;J)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/content/Context;J)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "timeout"    # J

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 60
    if-eqz p4, :cond_0

    .line 61
    const-string v0, "power"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x1

    const-string v2, "NotifyRegistrantLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    iget-object v1, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 65
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 69
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    iput-wide p5, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V
    .locals 7
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .line 55
    const-wide/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;J)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;J)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p5, "timeout"    # J

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/codeaurora/telephony/utils/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 50
    iput-object p4, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    iput-wide p5, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    .line 52
    return-void
.end method

.method private acquireNotifyWakeLock()V
    .locals 3

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "acquireNotifyWakeLock"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v1, p0, Lorg/codeaurora/ims/WakeLockRegistrant;->mWakeLockTimeOut:J

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public notifyException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 90
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 91
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyException(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public notifyRegistrant()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 79
    invoke-super {p0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 80
    return-void
.end method

.method public notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 96
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 97
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 98
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Lorg/codeaurora/ims/WakeLockRegistrant;->acquireNotifyWakeLock()V

    .line 85
    invoke-super {p0, p1}, Lorg/codeaurora/telephony/utils/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

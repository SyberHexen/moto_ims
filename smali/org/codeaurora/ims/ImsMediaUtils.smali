.class public Lorg/codeaurora/ims/ImsMediaUtils;
.super Ljava/lang/Object;
.source "ImsMediaUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 15
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public static newImsStreamMediaProfile(II)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1
    .param p0, "audioDirection"    # I
    .param p1, "rttMode"    # I

    .line 21
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public static newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2
    .param p0, "audioQuality"    # I
    .param p1, "audioDirection"    # I
    .param p2, "rttMode"    # I

    .line 27
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public static newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 1
    .param p0, "audioQuality"    # I
    .param p1, "videoQuality"    # I
    .param p2, "videoDirection"    # I
    .param p3, "rttMode"    # I

    .line 34
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    return-object v0
.end method

.method public static newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7
    .param p0, "audioQuality"    # I
    .param p1, "audioDirection"    # I
    .param p2, "videoQuality"    # I
    .param p3, "videoDirection"    # I
    .param p4, "rttMode"    # I

    .line 40
    new-instance v6, Landroid/telephony/ims/ImsStreamMediaProfile;

    move-object v0, v6

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    return-object v6
.end method

.class public Lorg/codeaurora/ims/CheckinEvent;
.super Ljava/lang/Object;
.source "CheckinEvent.java"


# static fields
.field private static final CLASS_CHECKIN_EVENT:Ljava/lang/String; = "com.motorola.android.provider.CheckinEvent"

.field private static final CLASS_EVENT:Ljava/lang/String; = "com.motorola.data.event.api.Event"

.field private static final METHOD_GET_EVENT_NAME:Ljava/lang/String; = "getEventName"

.field private static final METHOD_GET_TAG_NAME:Ljava/lang/String; = "getTagName"

.field private static final METHOD_GET_TIMESTAMP:Ljava/lang/String; = "getTimestamp"

.field private static final METHOD_GET_VERSION:Ljava/lang/String; = "getVersion"

.field private static final METHOD_PUBLISH:Ljava/lang/String; = "publish"

.field private static final METHOD_SERIALIZE_EVENT:Ljava/lang/String; = "serializeEvent"

.field private static final METHOD_SET_VALUE:Ljava/lang/String; = "setValue"

.field static final NULL_STR:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String;

.field private static sConstructorCheckinEvent:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static sInitialized:Z

.field private static sMethodGetEventName:Ljava/lang/reflect/Method;

.field private static sMethodGetTagName:Ljava/lang/reflect/Method;

.field private static sMethodGetTimestamp:Ljava/lang/reflect/Method;

.field private static sMethodGetVersion:Ljava/lang/reflect/Method;

.field private static sMethodPublish:Ljava/lang/reflect/Method;

.field private static sMethodSerializeEvent:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueInt:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueLong:Ljava/lang/reflect/Method;

.field private static sMethodSetNameValueString:Ljava/lang/reflect/Method;


# instance fields
.field private final mReflectedCheckinEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    const-string v0, "setValue"

    const-class v1, Lorg/codeaurora/ims/CheckinEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    sput-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    .line 56
    :try_start_0
    const-string v2, "com.motorola.data.event.api.Event"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 57
    .local v2, "clsEvent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "com.motorola.android.provider.CheckinEvent"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 60
    .local v3, "clsCheckinEvent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEvent:Ljava/lang/reflect/Constructor;

    .line 62
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor;

    .line 66
    const-string v4, "getEventName"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetEventName:Ljava/lang/reflect/Method;

    .line 67
    const-string v4, "getTagName"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTagName:Ljava/lang/reflect/Method;

    .line 68
    const-string v4, "getTimestamp"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTimestamp:Ljava/lang/reflect/Method;

    .line 69
    const-string v4, "getVersion"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetVersion:Ljava/lang/reflect/Method;

    .line 70
    const-string v4, "serializeEvent"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSerializeEvent:Ljava/lang/reflect/Method;

    .line 71
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

    .line 73
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

    .line 75
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueInt:Ljava/lang/reflect/Method;

    .line 77
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueLong:Ljava/lang/reflect/Method;

    .line 79
    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueString:Ljava/lang/reflect/Method;

    .line 83
    const-string v0, "publish"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodPublish:Ljava/lang/reflect/Method;

    .line 85
    sput-boolean v7, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v2    # "clsEvent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clsCheckinEvent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get checkin class."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    .line 90
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "checkinEvent":Ljava/lang/Object;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 104
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEvent:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 109
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to instantiate CheckinEvent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "checkinEvent":Ljava/lang/Object;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 123
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 124
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sConstructorCheckinEventTimestamp:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    .line 127
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    .line 129
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to instantiate CheckinEvent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iput-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 139
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    return v0
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 4

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "eventName":Ljava/lang/String;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetEventName:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 152
    goto :goto_0

    .line 150
    :catchall_0
    move-exception v1

    .line 151
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get event name."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 4

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "tagName":Ljava/lang/String;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 164
    :try_start_0
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTagName:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 167
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get tag name."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 5

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "timestamp":J
    sget-boolean v2, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 179
    :try_start_0
    sget-object v3, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetTimestamp:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 180
    .local v2, "val":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v3

    .line 183
    .end local v2    # "val":Ljava/lang/Long;
    :cond_0
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v2

    .line 182
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v4, "Unable to get timestamp."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "version":Ljava/lang/String;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->sMethodGetVersion:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    .line 197
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to get version."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public publish(Landroid/content/ContentResolver;)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 312
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sMethodPublish:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v0

    .line 316
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to publish."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public serializeEvent()Ljava/lang/StringBuilder;
    .locals 4

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-boolean v1, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 213
    :try_start_0
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->sMethodSerializeEvent:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 216
    goto :goto_0

    .line 214
    :catchall_0
    move-exception v1

    .line 215
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v3, "Unable to serialize event."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/String;D)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 244
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueDouble:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    .line 248
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set value."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 260
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueInt:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set value."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;J)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 276
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueLong:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set value."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 292
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 293
    if-nez p2, :cond_0

    .line 294
    const-string p2, "null"

    .line 297
    :cond_0
    :try_start_0
    sget-object v0, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueString:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    .line 299
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set value."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public setValue(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 228
    sget-boolean v0, Lorg/codeaurora/ims/CheckinEvent;->sInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CheckinEvent;->mReflectedCheckinEvent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->sMethodSetNameValueBoolean:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    .line 232
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lorg/codeaurora/ims/CheckinEvent;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set value."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

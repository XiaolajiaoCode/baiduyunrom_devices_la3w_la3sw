.class public final Lcom/yeptelecom/common/YepClassFactory;
.super Ljava/lang/Object;
.source "YepClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "YepClassFactory"

.field private static commonInterfaceMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mOPFactoryName:Ljava/lang/String; = "com.yeptelecom.op.YepOPClassFactory"

.field private static mOpChecked:Z

.field private static mOpGetIfClassName:Ljava/lang/reflect/Method;

.field private static opInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static primitiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/yeptelecom/common/YepClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yeptelecom/common/YepClassFactory;->mOpChecked:Z

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yeptelecom/common/YepClassFactory;->commonInterfaceMap:Ljava/util/Map;

    .line 67
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/yeptelecom/common/audioprofile/IAudioProfileService;

    const-string v2, "com.yeptelecom.audioprofile.AudioProfileService"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->commonInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/yeptelecom/common/audioprofile/IAudioProfileManager;

    const-string v2, "com.yeptelecom.audioprofile.AudioProfileManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    .line 76
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/yeptelecom/common/util/IPatterns;

    const-string v2, "com.yeptelecom.op.util.DefaultPatterns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension;

    const-string v2, "com.yeptelecom.op.audioprofile.DefaultAudioProfileExtension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    const-class v1, Lcom/yeptelecom/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const-string v2, "com.yeptelecom.op.audioprofile.DefaultProfileStatesGetter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    .line 260
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createInstance(): Begin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, ifClassName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 98
    .local v4, obj:Ljava/lang/Object;
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create Instance with :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v6, Lcom/yeptelecom/common/YepClassFactory;->commonInterfaceMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    sget-object v6, Lcom/yeptelecom/common/YepClassFactory;->commonInterfaceMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ifClassName:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 107
    .restart local v2       #ifClassName:Ljava/lang/String;
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create Instance from mediatek-framework library :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v2, p1}, Lcom/yeptelecom/common/YepClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 150
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createInstance(): End = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez v4, :cond_4

    .line 155
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "null object during finding :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 112
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    sget-object v6, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 114
    invoke-static {p0}, Lcom/yeptelecom/common/YepClassFactory;->getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create Instance from operator library :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-class v6, Lcom/yeptelecom/common/util/IPatterns;

    if-ne p0, v6, :cond_2

    .line 122
    const/4 v5, 0x0

    .line 124
    .local v5, patternsObj:Ljava/lang/Object;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    .line 126
    const/4 v6, 0x0

    aget-object v6, p1, v6

    const-string v7, "getWebUrl"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    const-string v6, "getWebUrl"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 128
    .local v3, method:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_1

    .line 129
    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, p1, v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    aget-object v9, p1, v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    aget-object v9, p1, v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v5           #patternsObj:Ljava/lang/Object;
    :cond_1
    move-object v4, v5

    .line 138
    .end local v0           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    goto/16 :goto_0

    .line 133
    .restart local v5       #patternsObj:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 134
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createInstance:got exception for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    goto :goto_1

    .line 139
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #patternsObj:Ljava/lang/Object;
    :cond_2
    invoke-static {v2, p1}, Lcom/yeptelecom/common/YepClassFactory;->getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 142
    :cond_3
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v6, "YepClassFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createInstance(): End = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    .end local v4           #obj:Ljava/lang/Object;
    :cond_4
    return-object v4
.end method

.method public static getInstanceHelper(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "className"
    .parameter "args"

    .prologue
    const/4 v11, 0x0

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v10, "YepClassFactory"

    const-string v12, "Interface full class name is null"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 217
    :goto_0
    return-object v10

    .line 170
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 172
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v10, p1

    if-nez v10, :cond_1

    .line 174
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 180
    .local v3, ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v10, v3

    if-ge v5, v10, :cond_7

    .line 181
    const/4 v7, 0x1

    .line 182
    .local v7, matched:Z
    aget-object v2, v3, v5

    .line 183
    .local v2, ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 184
    .local v9, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    array-length v10, v9

    array-length v12, p1

    if-eq v10, v12, :cond_3

    .line 180
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 188
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    array-length v10, v9

    if-ge v6, v10, :cond_5

    .line 189
    aget-object v8, v9, v6

    .line 190
    .local v8, paramType:Ljava/lang/Class;
    aget-object v10, p1, v6

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 192
    .local v0, actualType:Ljava/lang/Class;
    const-string v10, "YepClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getInstanceHelper: paramType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", actualType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/yeptelecom/common/YepClassFactory;->primitiveMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 198
    :cond_4
    const-string v10, "YepClassFactory"

    const-string v12, "Parameter not matched, skip"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v7, 0x0

    .line 208
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v8           #paramType:Ljava/lang/Class;
    :cond_5
    if-eqz v7, :cond_2

    .line 209
    const-string v10, "YepClassFactory"

    const-string v12, "Constructor matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0

    .line 203
    .restart local v0       #actualType:Ljava/lang/Class;
    .restart local v8       #paramType:Ljava/lang/Class;
    :cond_6
    const-string v10, "YepClassFactory"

    const-string v12, "Parameter matched"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 213
    .end local v0           #actualType:Ljava/lang/Class;
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ct:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v3           #ctorList:[Ljava/lang/reflect/Constructor;,"[Ljava/lang/reflect/Constructor<*>;"
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v7           #matched:Z
    .end local v8           #paramType:Ljava/lang/Class;
    .end local v9           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 214
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "YepClassFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4           #e:Ljava/lang/Exception;
    :cond_7
    move-object v10, v11

    .line 217
    goto/16 :goto_0
.end method

.method private static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 224
    .local v3, ifClassName:Ljava/lang/String;
    sget-object v4, Lcom/yeptelecom/common/YepClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 229
    :try_start_0
    const-string v4, "com.yeptelecom.op.YepOPClassFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 230
    .local v1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getOpIfClassName"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/yeptelecom/common/YepClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    .end local v1           #clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    sget-object v4, Lcom/yeptelecom/common/YepClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    .line 241
    :try_start_1
    sget-object v4, Lcom/yeptelecom/common/YepClassFactory;->mOpGetIfClassName:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    .line 249
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 251
    sget-object v4, Lcom/yeptelecom/common/YepClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #ifClassName:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 254
    .restart local v3       #ifClassName:Ljava/lang/String;
    :cond_2
    return-object v3

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "YepClassFactory"

    const-string v5, "OP not exist!, Get obj from default class"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 234
    .local v2, e:Ljava/lang/NoSuchMethodException;
    const-string v4, "YepClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not Such Method Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 243
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v4, "YepClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 245
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "YepClassFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InvocationTargetException Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

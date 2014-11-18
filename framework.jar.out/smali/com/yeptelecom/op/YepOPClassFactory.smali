.class public final Lcom/yeptelecom/op/YepOPClassFactory;
.super Ljava/lang/Object;
.source "YepOPClassFactory.java"


# static fields
.field private static final DEBUG_GETINSTANCE:Z = true

.field private static final DEBUG_PERFORMANCE:Z = true

.field private static final TAG:Ljava/lang/String; = "YepOPClassFactory"

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yeptelecom/op/YepOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpIfClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
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
    .line 21
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 23
    .local v0, ifClassName:Ljava/lang/String;
    sget-object v1, Lcom/yeptelecom/op/YepOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    sget-object v1, Lcom/yeptelecom/op/YepOPClassFactory;->opInterfaceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ifClassName:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 27
    .restart local v0       #ifClassName:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

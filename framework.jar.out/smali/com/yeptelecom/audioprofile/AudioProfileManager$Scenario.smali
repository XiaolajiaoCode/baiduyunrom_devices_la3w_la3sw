.class public final enum Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
.super Ljava/lang/Enum;
.source "AudioProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/AudioProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scenario"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field public static final enum CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field public static final enum GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field public static final enum MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field public static final enum OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

.field public static final enum SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "GENERAL"

    invoke-direct {v0, v1, v2}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "SILENT"

    invoke-direct {v0, v1, v3}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "MEETING"

    invoke-direct {v0, v1, v4}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "OUTDOOR"

    invoke-direct {v0, v1, v5}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    new-instance v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v6}, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .locals 1
    .parameter "name"

    .prologue
    .line 81
    const-class v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method

.method public static values()[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->$VALUES:[Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v0}, [Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;

    return-object v0
.end method

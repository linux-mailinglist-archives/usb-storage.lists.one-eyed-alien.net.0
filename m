Return-Path: <usb-storage+bncBDTZTRGMXIFBB4PY4TAAMGQEQNORAJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x145.google.com (mail-il1-x145.google.com [IPv6:2607:f8b0:4864:20::145])
	by mail.lfdr.de (Postfix) with ESMTPS id F1416AAA023
	for <lists+usb-storage@lfdr.de>; Tue,  6 May 2025 00:32:36 +0200 (CEST)
Received: by mail-il1-x145.google.com with SMTP id e9e14a558f8ab-3d6e10f8747sf44926275ab.3
        for <lists+usb-storage@lfdr.de>; Mon, 05 May 2025 15:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746484338; cv=pass;
        d=google.com; s=arc-20240605;
        b=K37KZajM0YyQQpiS/MoitYyQ/AxMyGvChkZkWlp6oCtTKkRqPSElUcAwEs1Z1ZFlKL
         voVUtt/FG4OJAhlpp8ER69c3ExINZK6R5NHSVnkQCtKHqAm2s1rN4jacGMZTxDFxwX8C
         b36SdxBTM3k2xT9cbpNyjzK/WHUQ4+k7AsmTEpp+YRk129ce3QICLE2qQyuvGL2Q6vdV
         7X4KYgH5jhSxRA0+79xYmV2k+3fYKo1ZJq3E8E4A2gp/fhEFidigZTz9iJXQE8r+yZ4p
         86se9qezewg0uwxBpdvkN+wmm7q5MUqa2mbVrT1CQK3pH7PJl/GK9YPoUaithlB0au+U
         cMlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RF8IUpszWyo0PONS/tY7ZsD9/Yy7q8cQJYE7dME87tc=;
        fh=vZ+LrTiKbyZxWMrJxidheV8efq1qLSmhHntFYXmQmJM=;
        b=GjoVY6/LCyPumzBqHt0s+FUNYZoxi9ZNfXcGApz5Zi/09ngkmA78U0em5wR0ISLoun
         O1NnkkyUuPPFGtZ7kyBVfDQdHT/i9Cc9dZkKD6MyY8DP1aln8hhoC/rRcWN/A+RLq84O
         9gvve6viNHVebMrFKbXXCdRc9u2uQ/ia2OGIQ5rK+eYPOD8ShCZ5M6dwMyK43tMw7D5e
         ZCem91GoOPzBi7dpInFF0e3zdEon4aMac+M/0ps0YRsvzu3sTkvciWgRiEwJs851U0Fi
         kLmwzwSRZWI91UBZEMs10WiMb08NOZwXYZakjvIEy5WrtoWmip71xA8y1ujJW3tkuIE8
         jl9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aMC6aGjO;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746484337; x=1747089137; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RF8IUpszWyo0PONS/tY7ZsD9/Yy7q8cQJYE7dME87tc=;
        b=QMjqBcgFBMwYp4j6ogeENLUmLMVYG8+ZGue+M+4zAfeVHD4yMzJvm65WyJ6U4vugtM
         gpJCrFZu13mi1rXNBhRSN2btJnDYH/0OHsu/PkZQ41OyNnAccffqFc8CD9i0d1Zo2CO+
         UycFU9HMDAsEfwT+KVred2l0NC4U0x/3wiR0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746484338; x=1747089138;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RF8IUpszWyo0PONS/tY7ZsD9/Yy7q8cQJYE7dME87tc=;
        b=JW7ElEuzVl46MwyddLU0nrqKmYQQ8xgJiymuamhJnP6RsqsrcwCytova/Tz86hb2Wv
         N2rKvxASuDw0cJ8wiXsNMVnWqoTgdAmcjJUPYLGrw6/TvXZqbNQkW1MByOp3dkbvxiOP
         71F3GNpFHlisg8NqwvwmdtAmD4OI7Ap1a01GIKftwG52wW4Wb9ysN1puIa/MZPXM/V6v
         INIXIYOKXLx1j6+flLazdUm8MOQeAz3Rp7Q9Wy9MtuEmFwyH9vMl3ozcq9v9OGOQCo8h
         5EnCIPtHZ8AmFWsaRVC0KKDT41cDkG8OoMMpdme33JEtQL3mZYHLTTDAbL/NLc9d1bYf
         X3ug==
X-Forwarded-Encrypted: i=2; AJvYcCWsl4pYvFLKFHbytLXuGXdOfTQKcmAGN862crCY2gay3LeYqrMzp07t8ak8mYDbJhvaduSjHA==@lfdr.de
X-Gm-Message-State: AOJu0YyIZ1ni06+lCr/bynG53mxxZT/IS8KC9uEvzTxQKWvbi+F9d2rH
	Jj0NHKoxIg0jHyOyyR7UcSQrfm92N6D4KUMWwSqmk7yWavOY8OJBsvHNA/v425E=
X-Google-Smtp-Source: AGHT+IGDODtgEWA0ULloVSYJq2rMxP7iPVqSPbTW4pEZfKxl6RXiD42KcKz/Qhwvl2mfA+6/tSGhrw==
X-Received: by 2002:a05:6e02:3281:b0:3d6:d3f7:8813 with SMTP id e9e14a558f8ab-3da5b349365mr106533125ab.22.1746484337638;
        Mon, 05 May 2025 15:32:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBH8IKg/B8R7mSGGjCCNV73jvFQvTvey7Sjl3qAo/L+PBw==
Received: by 2002:a92:c26d:0:b0:3d8:fe92:af4a with SMTP id e9e14a558f8ab-3d96e7f8327ls10377145ab.1.-pod-prod-07-us;
 Mon, 05 May 2025 15:32:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX/+VxvjgmBWTJJQ3iAoTA+h/JNLtggpDUHlk9AFzVbiGQul2XZeVqtyU2bonIkbTK5OpwmuOb+8NSaag==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6e02:1b0a:b0:3d3:d994:e92e with SMTP id e9e14a558f8ab-3da5b31e5e4mr80778865ab.17.1746484336594;
        Mon, 05 May 2025 15:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746484336; cv=none;
        d=google.com; s=arc-20240605;
        b=e9+2WWorGXyRwcb56uSezEgds998IVDl1BiT21QhIgJ+2K4+14H4wkeTp9PDFmFqfh
         it2cfQnlAvsIrZoF6wCLiESAyfxUrGI7JjzSuKuPNaKynmjfyCAZ/hI1xaQ0qa8q4NwO
         8bXLZ+XMEnsOjdNhp7+VXrCO+UbknR4hNpaQhsU9OeFBFtHjwXOaKQ3I9qKHU6LqjN+1
         GH8EzrRy07k2o68511hLKW2jiveoEOtLCgFfk27qEYtbITr1rKgDdg9ZvZ+LYB/+CBgn
         MraIU65A5Wue2GKStCSsQWvcORRJESkoORe5NGm7qlZJ4qOdXgNX532cnK5TpAxg1QXO
         dYrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S2EvH2lJDz6GjiaJdiR+O9eJfbjQVvyvDLIgorLdd28=;
        fh=fE51aj1lzuRO9cHwb+16+sSGInAHRqk6w46B4dLosOE=;
        b=CFwuNSXw5cGrXgLdyms2K5iUTlgfGIRloNb/FDFd4DI/V+494pE9Jz0k0CWNLGIV4b
         P6MDY2YuWbQLrC1TBl1/GF738I/80h71AQpI1QiZCTw8IV4fcKygmTwYp7f+wny9+Ig0
         ++flX1Fk711Ag66BDtW1K2dPaMR9QNe9okytbIVHlFYPHyohJZvRGWULuDm0qPeWC/X5
         X5POz0GRX7/ucZi+tkGI/ENBzipQeUL/+0kqq2KDlTgJiXuIsOff76y3xZ1rpoLG3ZwR
         LaS/EUEQe6hAFvBe+cdmdKU03EZZJnosT7+PM4NIUlTdOWWXUM43QIz+zJkkxTgcV5xv
         O8kg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aMC6aGjO;
       spf=pass (google.com: domain of sashal@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from tor.source.kernel.org (tor.source.kernel.org. [172.105.4.254])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3d975e1de78si91992055ab.25.2025.05.05.15.32.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 15:32:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 172.105.4.254 as permitted sender) client-ip=172.105.4.254;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4225D61F1B;
	Mon,  5 May 2025 22:31:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E16DC4CEE4;
	Mon,  5 May 2025 22:32:11 +0000 (UTC)
From: "'Sasha Levin' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Bart Van Assche <bvanassche@acm.org>,
	Christoph Hellwig <hch@lst.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Sasha Levin <sashal@kernel.org>,
	sathya.prakash@broadcom.com,
	sreekanth.reddy@broadcom.com,
	suganath-prabu.subramani@broadcom.com,
	aacraid@microsemi.com,
	James.Bottomley@HansenPartnership.com,
	linux@armlinux.org.uk,
	kashyap.desai@broadcom.com,
	sumit.saxena@broadcom.com,
	shivasharan.srikanteshwara@broadcom.com,
	chandrakanth.patil@broadcom.com,
	stern@rowland.harvard.edu,
	rostedt@goodmis.org,
	mhiramat@kernel.org,
	snovitoll@gmail.com,
	jeff.johnson@oss.qualcomm.com,
	lihongbo22@huawei.com,
	viro@zeniv.linux.org.uk,
	djwong@kernel.org,
	axboe@kernel.dk,
	john.g.garry@oracle.com,
	jani.nikula@intel.com,
	rafael@kernel.org,
	christian.koenig@amd.com,
	MPT-FusionLinux.pdl@broadcom.com,
	linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	megaraidlinux.pdl@broadcom.com,
	target-devel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-trace-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH AUTOSEL 6.14 457/642] scsi: usb: Rename the
 RESERVE and RELEASE constants
Date: Mon,  5 May 2025 18:11:13 -0400
Message-Id: <20250505221419.2672473-457-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aMC6aGjO;       spf=pass
 (google.com: domain of sashal@kernel.org designates 172.105.4.254 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Sasha Levin <sashal@kernel.org>
Reply-To: Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

From: Bart Van Assche <bvanassche@acm.org>

[ Upstream commit 0ea163a18b17f9e0f8350bb348ae69c4a376be66 ]

The names RESERVE and RELEASE are not only used in <scsi/scsi_proto.h> but
also elsewhere in the kernel:

$ git grep -nHE 'define[[:blank:]]*(RESERVE|RELEASE)[[:blank:]]'
drivers/input/joystick/walkera0701.c:13:#define RESERVE 20000
drivers/s390/char/tape_std.h:56:#define RELEASE			0xD4	/* 3420 NOP, 3480 REJECT */
drivers/s390/char/tape_std.h:58:#define RESERVE			0xF4	/* 3420 NOP, 3480 REJECT */

Additionally, while the names of the symbolic constants RESERVE_10 and
RELEASE_10 include the command length, the command length is not included
in the RESERVE and RELEASE names. Address both issues by renaming the
RESERVE and RELEASE constants into RESERVE_6 and RELEASE_6 respectively.

Reviewed-by: Christoph Hellwig <hch@lst.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
Link: https://lore.kernel.org/r/20250210205031.2970833-1-bvanassche@acm.org
Signed-off-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/message/fusion/mptscsih.c            |  4 ++--
 drivers/scsi/aacraid/aachba.c                |  4 ++--
 drivers/scsi/arm/acornscsi.c                 |  2 +-
 drivers/scsi/ips.c                           |  8 ++++----
 drivers/scsi/megaraid.c                      | 10 +++++-----
 drivers/scsi/megaraid/megaraid_mbox.c        | 10 +++++-----
 drivers/target/target_core_device.c          |  8 ++++----
 drivers/target/target_core_pr.c              |  6 +++---
 drivers/target/target_core_spc.c             | 20 ++++++++++----------
 drivers/usb/gadget/function/f_mass_storage.c |  4 ++--
 drivers/usb/storage/debug.c                  |  4 ++--
 include/scsi/scsi_proto.h                    |  4 ++--
 include/trace/events/scsi.h                  |  4 ++--
 include/trace/events/target.h                |  4 ++--
 14 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/message/fusion/mptscsih.c b/drivers/message/fusion/mptscsih.c
index a9604ba3c8058..f0746db92ca61 100644
--- a/drivers/message/fusion/mptscsih.c
+++ b/drivers/message/fusion/mptscsih.c
@@ -2915,14 +2915,14 @@ mptscsih_do_cmd(MPT_SCSI_HOST *hd, INTERNAL_CMD *io)
 		timeout = 10;
 		break;
 
-	case RESERVE:
+	case RESERVE_6:
 		cmdLen = 6;
 		dir = MPI_SCSIIO_CONTROL_READ;
 		CDB[0] = cmd;
 		timeout = 10;
 		break;
 
-	case RELEASE:
+	case RELEASE_6:
 		cmdLen = 6;
 		dir = MPI_SCSIIO_CONTROL_READ;
 		CDB[0] = cmd;
diff --git a/drivers/scsi/aacraid/aachba.c b/drivers/scsi/aacraid/aachba.c
index abf6a82b74af3..0be719f383770 100644
--- a/drivers/scsi/aacraid/aachba.c
+++ b/drivers/scsi/aacraid/aachba.c
@@ -3221,8 +3221,8 @@ int aac_scsi_cmd(struct scsi_cmnd * scsicmd)
 			break;
 		}
 		fallthrough;
-	case RESERVE:
-	case RELEASE:
+	case RESERVE_6:
+	case RELEASE_6:
 	case REZERO_UNIT:
 	case REASSIGN_BLOCKS:
 	case SEEK_10:
diff --git a/drivers/scsi/arm/acornscsi.c b/drivers/scsi/arm/acornscsi.c
index e50a3dbf9de3e..ef21b85cf0146 100644
--- a/drivers/scsi/arm/acornscsi.c
+++ b/drivers/scsi/arm/acornscsi.c
@@ -591,7 +591,7 @@ datadir_t acornscsi_datadirection(int command)
     case CHANGE_DEFINITION:	case COMPARE:		case COPY:
     case COPY_VERIFY:		case LOG_SELECT:	case MODE_SELECT:
     case MODE_SELECT_10:	case SEND_DIAGNOSTIC:	case WRITE_BUFFER:
-    case FORMAT_UNIT:		case REASSIGN_BLOCKS:	case RESERVE:
+    case FORMAT_UNIT:		case REASSIGN_BLOCKS:	case RESERVE_6:
     case SEARCH_EQUAL:		case SEARCH_HIGH:	case SEARCH_LOW:
     case WRITE_6:		case WRITE_10:		case WRITE_VERIFY:
     case UPDATE_BLOCK:		case WRITE_LONG:	case WRITE_SAME:
diff --git a/drivers/scsi/ips.c b/drivers/scsi/ips.c
index cce6c6b409ad5..94adb6ac02a4e 100644
--- a/drivers/scsi/ips.c
+++ b/drivers/scsi/ips.c
@@ -3631,8 +3631,8 @@ ips_send_cmd(ips_ha_t * ha, ips_scb_t * scb)
 
 			break;
 
-		case RESERVE:
-		case RELEASE:
+		case RESERVE_6:
+		case RELEASE_6:
 			scb->scsi_cmd->result = DID_OK << 16;
 			break;
 
@@ -3899,8 +3899,8 @@ ips_chkstatus(ips_ha_t * ha, IPS_STATUS * pstatus)
 			case WRITE_6:
 			case READ_10:
 			case WRITE_10:
-			case RESERVE:
-			case RELEASE:
+			case RESERVE_6:
+			case RELEASE_6:
 				break;
 
 			case MODE_SENSE:
diff --git a/drivers/scsi/megaraid.c b/drivers/scsi/megaraid.c
index adab151663dd8..2006094af4189 100644
--- a/drivers/scsi/megaraid.c
+++ b/drivers/scsi/megaraid.c
@@ -855,8 +855,8 @@ mega_build_cmd(adapter_t *adapter, struct scsi_cmnd *cmd, int *busy)
 			return scb;
 
 #if MEGA_HAVE_CLUSTERING
-		case RESERVE:
-		case RELEASE:
+		case RESERVE_6:
+		case RELEASE_6:
 
 			/*
 			 * Do we support clustering and is the support enabled
@@ -875,7 +875,7 @@ mega_build_cmd(adapter_t *adapter, struct scsi_cmnd *cmd, int *busy)
 			}
 
 			scb->raw_mbox[0] = MEGA_CLUSTER_CMD;
-			scb->raw_mbox[2] = ( *cmd->cmnd == RESERVE ) ?
+			scb->raw_mbox[2] = *cmd->cmnd == RESERVE_6 ?
 				MEGA_RESERVE_LD : MEGA_RELEASE_LD;
 
 			scb->raw_mbox[3] = ldrv_num;
@@ -1618,8 +1618,8 @@ mega_cmd_done(adapter_t *adapter, u8 completed[], int nstatus, int status)
 			 * failed or the input parameter is invalid
 			 */
 			if( status == 1 &&
-				(cmd->cmnd[0] == RESERVE ||
-					 cmd->cmnd[0] == RELEASE) ) {
+			    (cmd->cmnd[0] == RESERVE_6 ||
+			     cmd->cmnd[0] == RELEASE_6) ) {
 
 				cmd->result |= (DID_ERROR << 16) |
 					SAM_STAT_RESERVATION_CONFLICT;
diff --git a/drivers/scsi/megaraid/megaraid_mbox.c b/drivers/scsi/megaraid/megaraid_mbox.c
index 60cc3372991fd..3ba837b3093f8 100644
--- a/drivers/scsi/megaraid/megaraid_mbox.c
+++ b/drivers/scsi/megaraid/megaraid_mbox.c
@@ -1725,8 +1725,8 @@ megaraid_mbox_build_cmd(adapter_t *adapter, struct scsi_cmnd *scp, int *busy)
 
 			return scb;
 
-		case RESERVE:
-		case RELEASE:
+		case RESERVE_6:
+		case RELEASE_6:
 			/*
 			 * Do we support clustering and is the support enabled
 			 */
@@ -1748,7 +1748,7 @@ megaraid_mbox_build_cmd(adapter_t *adapter, struct scsi_cmnd *scp, int *busy)
 			scb->dev_channel	= 0xFF;
 			scb->dev_target		= target;
 			ccb->raw_mbox[0]	= CLUSTER_CMD;
-			ccb->raw_mbox[2]	=  (scp->cmnd[0] == RESERVE) ?
+			ccb->raw_mbox[2]	= scp->cmnd[0] == RESERVE_6 ?
 						RESERVE_LD : RELEASE_LD;
 
 			ccb->raw_mbox[3]	= target;
@@ -2334,8 +2334,8 @@ megaraid_mbox_dpc(unsigned long devp)
 			 * Error code returned is 1 if Reserve or Release
 			 * failed or the input parameter is invalid
 			 */
-			if (status == 1 && (scp->cmnd[0] == RESERVE ||
-					 scp->cmnd[0] == RELEASE)) {
+			if (status == 1 && (scp->cmnd[0] == RESERVE_6 ||
+					    scp->cmnd[0] == RELEASE_6)) {
 
 				scp->result = DID_ERROR << 16 |
 					SAM_STAT_RESERVATION_CONFLICT;
diff --git a/drivers/target/target_core_device.c b/drivers/target/target_core_device.c
index d1ae3df069a4f..cc2da086f96e2 100644
--- a/drivers/target/target_core_device.c
+++ b/drivers/target/target_core_device.c
@@ -1078,8 +1078,8 @@ passthrough_parse_cdb(struct se_cmd *cmd,
 	if (!dev->dev_attrib.emulate_pr &&
 	    ((cdb[0] == PERSISTENT_RESERVE_IN) ||
 	     (cdb[0] == PERSISTENT_RESERVE_OUT) ||
-	     (cdb[0] == RELEASE || cdb[0] == RELEASE_10) ||
-	     (cdb[0] == RESERVE || cdb[0] == RESERVE_10))) {
+	     (cdb[0] == RELEASE_6 || cdb[0] == RELEASE_10) ||
+	     (cdb[0] == RESERVE_6 || cdb[0] == RESERVE_10))) {
 		return TCM_UNSUPPORTED_SCSI_OPCODE;
 	}
 
@@ -1101,7 +1101,7 @@ passthrough_parse_cdb(struct se_cmd *cmd,
 			return target_cmd_size_check(cmd, size);
 		}
 
-		if (cdb[0] == RELEASE || cdb[0] == RELEASE_10) {
+		if (cdb[0] == RELEASE_6 || cdb[0] == RELEASE_10) {
 			cmd->execute_cmd = target_scsi2_reservation_release;
 			if (cdb[0] == RELEASE_10)
 				size = get_unaligned_be16(&cdb[7]);
@@ -1109,7 +1109,7 @@ passthrough_parse_cdb(struct se_cmd *cmd,
 				size = cmd->data_length;
 			return target_cmd_size_check(cmd, size);
 		}
-		if (cdb[0] == RESERVE || cdb[0] == RESERVE_10) {
+		if (cdb[0] == RESERVE_6 || cdb[0] == RESERVE_10) {
 			cmd->execute_cmd = target_scsi2_reservation_reserve;
 			if (cdb[0] == RESERVE_10)
 				size = get_unaligned_be16(&cdb[7]);
diff --git a/drivers/target/target_core_pr.c b/drivers/target/target_core_pr.c
index 4f4ad6af416c8..34cf2c399b399 100644
--- a/drivers/target/target_core_pr.c
+++ b/drivers/target/target_core_pr.c
@@ -91,7 +91,7 @@ target_scsi2_reservation_check(struct se_cmd *cmd)
 
 	switch (cmd->t_task_cdb[0]) {
 	case INQUIRY:
-	case RELEASE:
+	case RELEASE_6:
 	case RELEASE_10:
 		return 0;
 	default:
@@ -418,12 +418,12 @@ static int core_scsi3_pr_seq_non_holder(struct se_cmd *cmd, u32 pr_reg_type,
 			return -EINVAL;
 		}
 		break;
-	case RELEASE:
+	case RELEASE_6:
 	case RELEASE_10:
 		/* Handled by CRH=1 in target_scsi2_reservation_release() */
 		ret = 0;
 		break;
-	case RESERVE:
+	case RESERVE_6:
 	case RESERVE_10:
 		/* Handled by CRH=1 in target_scsi2_reservation_reserve() */
 		ret = 0;
diff --git a/drivers/target/target_core_spc.c b/drivers/target/target_core_spc.c
index 61c065702350e..785a97536212b 100644
--- a/drivers/target/target_core_spc.c
+++ b/drivers/target/target_core_spc.c
@@ -1674,9 +1674,9 @@ static bool tcm_is_pr_enabled(struct target_opcode_descriptor *descr,
 		return true;
 
 	switch (descr->opcode) {
-	case RESERVE:
+	case RESERVE_6:
 	case RESERVE_10:
-	case RELEASE:
+	case RELEASE_6:
 	case RELEASE_10:
 		/*
 		 * The pr_ops which are used by the backend modules don't
@@ -1828,9 +1828,9 @@ static struct target_opcode_descriptor tcm_opcode_pro_register_move = {
 
 static struct target_opcode_descriptor tcm_opcode_release = {
 	.support = SCSI_SUPPORT_FULL,
-	.opcode = RELEASE,
+	.opcode = RELEASE_6,
 	.cdb_size = 6,
-	.usage_bits = {RELEASE, 0x00, 0x00, 0x00,
+	.usage_bits = {RELEASE_6, 0x00, 0x00, 0x00,
 		       0x00, SCSI_CONTROL_MASK},
 	.enabled = tcm_is_pr_enabled,
 };
@@ -1847,9 +1847,9 @@ static struct target_opcode_descriptor tcm_opcode_release10 = {
 
 static struct target_opcode_descriptor tcm_opcode_reserve = {
 	.support = SCSI_SUPPORT_FULL,
-	.opcode = RESERVE,
+	.opcode = RESERVE_6,
 	.cdb_size = 6,
-	.usage_bits = {RESERVE, 0x00, 0x00, 0x00,
+	.usage_bits = {RESERVE_6, 0x00, 0x00, 0x00,
 		       0x00, SCSI_CONTROL_MASK},
 	.enabled = tcm_is_pr_enabled,
 };
@@ -2267,9 +2267,9 @@ spc_parse_cdb(struct se_cmd *cmd, unsigned int *size)
 	unsigned char *cdb = cmd->t_task_cdb;
 
 	switch (cdb[0]) {
-	case RESERVE:
+	case RESERVE_6:
 	case RESERVE_10:
-	case RELEASE:
+	case RELEASE_6:
 	case RELEASE_10:
 		if (!dev->dev_attrib.emulate_pr)
 			return TCM_UNSUPPORTED_SCSI_OPCODE;
@@ -2313,7 +2313,7 @@ spc_parse_cdb(struct se_cmd *cmd, unsigned int *size)
 		*size = get_unaligned_be32(&cdb[5]);
 		cmd->execute_cmd = target_scsi3_emulate_pr_out;
 		break;
-	case RELEASE:
+	case RELEASE_6:
 	case RELEASE_10:
 		if (cdb[0] == RELEASE_10)
 			*size = get_unaligned_be16(&cdb[7]);
@@ -2322,7 +2322,7 @@ spc_parse_cdb(struct se_cmd *cmd, unsigned int *size)
 
 		cmd->execute_cmd = target_scsi2_reservation_release;
 		break;
-	case RESERVE:
+	case RESERVE_6:
 	case RESERVE_10:
 		/*
 		 * The SPC-2 RESERVE does not contain a size in the SCSI CDB.
diff --git a/drivers/usb/gadget/function/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
index 2eae8fc2e0db7..94d478b6bcd3d 100644
--- a/drivers/usb/gadget/function/f_mass_storage.c
+++ b/drivers/usb/gadget/function/f_mass_storage.c
@@ -2142,8 +2142,8 @@ static int do_scsi_command(struct fsg_common *common)
 	 * of Posix locks.
 	 */
 	case FORMAT_UNIT:
-	case RELEASE:
-	case RESERVE:
+	case RELEASE_6:
+	case RESERVE_6:
 	case SEND_DIAGNOSTIC:
 
 	default:
diff --git a/drivers/usb/storage/debug.c b/drivers/usb/storage/debug.c
index 576be66ad9627..dda610f689b73 100644
--- a/drivers/usb/storage/debug.c
+++ b/drivers/usb/storage/debug.c
@@ -58,8 +58,8 @@ void usb_stor_show_command(const struct us_data *us, struct scsi_cmnd *srb)
 	case INQUIRY: what = "INQUIRY"; break;
 	case RECOVER_BUFFERED_DATA: what = "RECOVER_BUFFERED_DATA"; break;
 	case MODE_SELECT: what = "MODE_SELECT"; break;
-	case RESERVE: what = "RESERVE"; break;
-	case RELEASE: what = "RELEASE"; break;
+	case RESERVE_6: what = "RESERVE"; break;
+	case RELEASE_6: what = "RELEASE"; break;
 	case COPY: what = "COPY"; break;
 	case ERASE: what = "ERASE"; break;
 	case MODE_SENSE: what = "MODE_SENSE"; break;
diff --git a/include/scsi/scsi_proto.h b/include/scsi/scsi_proto.h
index 70e1262b2e202..aeca37816506d 100644
--- a/include/scsi/scsi_proto.h
+++ b/include/scsi/scsi_proto.h
@@ -33,8 +33,8 @@
 #define INQUIRY               0x12
 #define RECOVER_BUFFERED_DATA 0x14
 #define MODE_SELECT           0x15
-#define RESERVE               0x16
-#define RELEASE               0x17
+#define RESERVE_6             0x16
+#define RELEASE_6             0x17
 #define COPY                  0x18
 #define ERASE                 0x19
 #define MODE_SENSE            0x1a
diff --git a/include/trace/events/scsi.h b/include/trace/events/scsi.h
index 05f1945ed204e..bf6cc98d91228 100644
--- a/include/trace/events/scsi.h
+++ b/include/trace/events/scsi.h
@@ -29,8 +29,8 @@
 		scsi_opcode_name(INQUIRY),			\
 		scsi_opcode_name(RECOVER_BUFFERED_DATA),	\
 		scsi_opcode_name(MODE_SELECT),			\
-		scsi_opcode_name(RESERVE),			\
-		scsi_opcode_name(RELEASE),			\
+		scsi_opcode_name(RESERVE_6),			\
+		scsi_opcode_name(RELEASE_6),			\
 		scsi_opcode_name(COPY),				\
 		scsi_opcode_name(ERASE),			\
 		scsi_opcode_name(MODE_SENSE),			\
diff --git a/include/trace/events/target.h b/include/trace/events/target.h
index a13cbf2b34050..7e2e20ba26f1c 100644
--- a/include/trace/events/target.h
+++ b/include/trace/events/target.h
@@ -31,8 +31,8 @@
 		scsi_opcode_name(INQUIRY),			\
 		scsi_opcode_name(RECOVER_BUFFERED_DATA),	\
 		scsi_opcode_name(MODE_SELECT),			\
-		scsi_opcode_name(RESERVE),			\
-		scsi_opcode_name(RELEASE),			\
+		scsi_opcode_name(RESERVE_6),			\
+		scsi_opcode_name(RELEASE_6),			\
 		scsi_opcode_name(COPY),				\
 		scsi_opcode_name(ERASE),			\
 		scsi_opcode_name(MODE_SENSE),			\
-- 
2.39.5

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250505221419.2672473-457-sashal%40kernel.org.

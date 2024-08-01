Return-Path: <usb-storage+bncBDTZTRGMXIFBBC5SVO2QMGQEESRUHEA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 586AA943C7E
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:38:37 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id 006d021491bc7-5d5cef4a643sf1141805eaf.3
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:38:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722472716; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvxpcjvFVMNrHMTE/fPCHdTu1vBWRSEcmKdguSh6pb5hpeSoY/ay5JQprRzahwnOPm
         BZSCszIjH1Zm4VNdDpIpgkxXY7uEt196DeB78bJX9r+/CHxb9dXAQ1nJGrMHCoDCloCI
         yrf0Jx3oBTJbO9penHDvZGIOedVDxMqxxsnigeAIt+cQ2JMK//HzrpmG2AwjM9cgeUUa
         w0E2JZVJ71MYVjyCm+pnGTKNN0O6FmsT+EqchnMDfZbGjPI1eqZuIOg7fRU8XbrcMWD6
         WVymmnCVeHJdXe0R5gLDtgwnk3I1qlHyNKRMVNYk4z0NvtxZo7E7sE4v+jN1TYzvtnkj
         Ucpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y4o+s4O0eu6l99bY5PRBhYGX7I4/Ql3KUG1kkOqF0Q4=;
        fh=Ikn2FyL0Z8FdsWDrYI/m5oOOq/LLwH2NEsIj+AWdPEI=;
        b=ODDILOIFyMgSX06+XnuSQlXjgoUmMUuR96fELH652kTI4O2ZXX4q28zRW+d04QuYHV
         kZFdObqS9CXTr71BEh5lARxROTv+9/FKWOil7FBtbLQKviZ/VAj3zJW6axqE40fCsDYO
         Xe3lNzCKhCVbZ/c0YaOR/48LttIVPzfslmnpQa74b63AeSWgWNpCq6ng2Pnq6rc2bAso
         pUHszBLzhihKrRk6BeK0y2fDQrLosqNHrLE4gjCIqVdKVnET8T/gTSChOky0ZhTIVe5/
         FBSQWm+vwHWqtWCDJtEGpqu4vzJrqvVj5qcmWIWYejcWlZT8Riyn2K+gL/rWSh9QVgis
         zUZg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="T2dbc+/g";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722472716; x=1723077516; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y4o+s4O0eu6l99bY5PRBhYGX7I4/Ql3KUG1kkOqF0Q4=;
        b=VllLLu3+bCzPKxV4aHXjNoUrTt+c8YxhDWEUJgSY+7oSBgfWNWRCkoK9cFPvuZDXjb
         wwCqT57ey4SncsfT3SqNMcDaV5J48+y5JSvJ2ThiVx5FMZ6mZgUvWi84zQEevQuvmLUV
         m+y7e9XNhzQRc9bwl/H0Vf23p3RLE8GUMnyIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722472716; x=1723077516;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y4o+s4O0eu6l99bY5PRBhYGX7I4/Ql3KUG1kkOqF0Q4=;
        b=kZuWYQlFJqVMYt2hp9q50B7d2vuSYYZxEFa2J/EoK0dwDQelDgN8KCCaUrf1fL4dh9
         mweSuDgEr230dbBXN3fTDyZLhdnjoi936MonJFGJB7WuqyqaeMLKEaoZzWnPoQjtzRK6
         /3J/1LwpGmAQDC0m1XmtUc06IXq4xYOLEwS2Qc/hvTZbCgbRdCtHz7xoHnAA5xON8Emc
         AvlP2xJnkt3b5yIrsvGeXLWusjyiuhvoGmor6IZB20YsJhrqVswDeDhHzHRMH9co53cU
         BAkgKJS9gEFsn9r5YV/xQxsBLy7u85Xfrfe9XMIwwb2ZFLLzPR39fLA5mjGg9CueDbaG
         Pvnw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUdkGgx2YryPY+1iB84ErdF/QYv8doghiaEp+y8hbhjspqaUalzNnG/SsKKN/HUlTE1g0H5Fb6xJdVdmZIBUHDSsw18oaOYp7Kk
X-Gm-Message-State: AOJu0Yym41RDQoQKGF2wadnklschOtxyGnREGUvM/jkXj/p7TzgAGoUR
	XvGLLJN64z1o5rglU4nz/Nw/h7E6C1Zm6UWUMCAnoxHYsZaFYbDlRuS5VGU+6FI=
X-Google-Smtp-Source: AGHT+IFLy1AkePAinI0zlaTUxlyvxRQMoOkQBP0/GODP/lS/DY4qmFqXjxHIQsuI9hrchApnzD6SFg==
X-Received: by 2002:a4a:e6cc:0:b0:5c6:67b7:41dd with SMTP id 006d021491bc7-5d61e3ff6d5mr830542eaf.0.1722472716092;
        Wed, 31 Jul 2024 17:38:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:8709:0:b0:5bf:bc4a:2963 with SMTP id 006d021491bc7-5d5ae8da0bals6825489eaf.1.-pod-prod-07-us;
 Wed, 31 Jul 2024 17:38:35 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+TO6zwDXwb2bKw6uWqC5YJZonTTTPX5xb/SHYUmvu9CTNdZw6lIRhgiMhdRkSgxAeevXNL2RGcuFenId/3N6rr3/FkVYda+XW4MeYRTpglcZbbxI=
X-Received: by 2002:a05:6830:3506:b0:709:3585:fd79 with SMTP id 46e09a7af769-7096b8494f9mr799531a34.13.1722472715253;
        Wed, 31 Jul 2024 17:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722472715; cv=none;
        d=google.com; s=arc-20160816;
        b=VXMrSrAR40oWrouYEDcCJ1emBRtjJhk7wEkr7/ld6YZQDNUaSAqXAmi395IbpVKKtO
         OKs2pl+rB63MNQcq8AVzpsUCl85FAHqpqgkUVsP1Bld8voUhMSoPNKLctUHEvrDwx2BS
         H+/4CJfn3NmN0fT2XIcHjy9vT1oV/JXADBya5BKIaU3WeMFdlkAo64vn3SjgkBa09aNi
         9lZezo6DzbH1OOclMz+oGrugmp+E7DqTHTiYItCIZoFVkIR1KHzwLfFvH9aJD7tLhnUL
         /LTLjNWYvPfH08EAIL5lRfByYGRSMSLgkAGIIiIFSsPiAF9Wz4sjK2JnOqkZLhb4luex
         zD7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ohhBAljsfx/UVPE9HS/rWJ9Jl+iTvz77qjhqxDOsHNk=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=F2WWPoTUCtoUKgupG66ogSyxOvgz5F1j3AHtVk6Zo490XekIS4WyWYIleHtJx6IxSN
         ZGNV/P5bdbcs79n689Ojc79niOeF/eBme1dNjEGcX4qv0VhH9nh4TYEwOWKEELepkjyg
         3bdZq6BZGfY9v6KD+VAF14aH9o/+RTaoV1yjwR3+ttNUf/in3vZbA58POl/JUGpuKxxa
         5WdnAydKRikgk6AW2+ONMfhXOrzkv0jzxr9Ud/4td7Cnq5Co40MJopFkH/c7UKcgVUj9
         SlzLjLu2n9qebaM+cd/GVf22HfS2vQGStz4GZylWq1V3vPjHL8z5YgEtF0wq8PmbaKAU
         /k8w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="T2dbc+/g";
       spf=pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id 46e09a7af769-7095ad6ed1asi2677547a34.25.2024.07.31.17.38.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 08A5C6173E;
	Thu,  1 Aug 2024 00:38:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C12FC32786;
	Thu,  1 Aug 2024 00:38:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Shantanu Goel <sgoel01@yahoo.com>,
	Oliver Neukum <oneukum@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 5.10 30/38] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:35:36 -0400
Message-ID: <20240801003643.3938534-30-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801003643.3938534-1-sashal@kernel.org>
References: <20240801003643.3938534-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.10.223
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="T2dbc+/g";       spf=pass
 (google.com: domain of sashal@kernel.org designates 2604:1380:4641:c500::1 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Shantanu Goel <sgoel01@yahoo.com>

[ Upstream commit 9d32685a251a754f1823d287df233716aa23bcb9 ]

Set the host status byte when a data completion error is encountered
otherwise the upper layer may end up using the invalid zero'ed data.
The following output was observed from scsi/sd.c prior to this fix.

[   11.872824] sd 0:0:0:1: [sdf] tag#9 data cmplt err -75 uas-tag 1 inflight:
[   11.872826] sd 0:0:0:1: [sdf] tag#9 CDB: Read capacity(16) 9e 10 00 00 00 00 00 00 00 00 00 00 00 20 00 00
[   11.872830] sd 0:0:0:1: [sdf] Sector size 0 reported, assuming 512.

Signed-off-by: Shantanu Goel <sgoel01@yahoo.com>
Acked-by: Oliver Neukum <oneukum@suse.com>
Link: https://lore.kernel.org/r/87msnx4ec6.fsf@yahoo.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/uas.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index ff6f41e7e0683..ea1680c4cc065 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -424,6 +424,7 @@ static void uas_data_cmplt(struct urb *urb)
 			uas_log_cmd_state(cmnd, "data cmplt err", status);
 		/* error: no data transfered */
 		scsi_set_resid(cmnd, sdb->length);
+		set_host_byte(cmnd, DID_ERROR);
 	} else {
 		scsi_set_resid(cmnd, sdb->length - urb->actual_length);
 	}
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801003643.3938534-30-sashal%40kernel.org.

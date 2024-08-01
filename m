Return-Path: <usb-storage+bncBDTZTRGMXIFBBZ5SVO2QMGQEEZK23JQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id E709D943C9F
	for <lists+usb-storage@lfdr.de>; Thu,  1 Aug 2024 02:40:08 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2cb575938f1sf6350518a91.2
        for <lists+usb-storage@lfdr.de>; Wed, 31 Jul 2024 17:40:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722472807; cv=pass;
        d=google.com; s=arc-20160816;
        b=ame0vILCGPqIneAwC4tWgLUm9U6/MUwlkvEJ2VeyDS7rGpwzOQgf3hDaUcIc6mKSoT
         7Y5Zl+r8N1gOD3CrS5J3+PSsoNSZOE3CWjQeOBagCCg+1x8NyrLnQzAc0ZnpIeBvceoq
         vRz7iDkxur38DsXLsdYPSOrmf4nwoObNfACzmXOE0asUZmI6fgiHf4xITyrn3C4jL50v
         9sQX533LEIYKw4k8hz2JacRbhfLB4XcMw9LalwjKu3SGs1xvJCR84k5dXsGcG3+VmFKo
         C53gMyEEyVpSUu08fYNC9i2qmtJUozsyXf7NB+p0y5emvX0w2tb49ffS2CJee8wyJaaC
         35Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=J2OCtan7GqwO1p3ton9u1EX0GD45+ZqqVAY9M+M9Oug=;
        fh=5lA9XDh2BEgatxP4nLp760eYPYcm1xQrvDd5pOPWn7o=;
        b=zzCiANAY3AiivokuYrv21zHcx8koGEx5Ho0r60ZrvlOfkvtaY++VTlYJO2G6kP9w8z
         ZNYnumNzbZ1LzPG1eFEo8c/tfcoRjFmciemkf2/9WBi9WnMaZbz29MjJ+5w+Xw3mXTX2
         4OBtRq1yC5LUhge6YsmPt6MdyPyrKs3CGgxb1me9Ln9FcP0vJyZqB//1NvZxPhEfNpPq
         1aRq2TfmZOBOZ4HBbV26FtEU6YG/NvYgZIBrs+4XgJHKCLjFzx3CuVwZKmJEhMUvvwk1
         k+wA2Ds1HXzcQbNh8ePhXIJxcN64eZljuVIDEt7v9ydA0f9t0wDHQHiGc5S4kxHBL4M0
         0Ecw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F9tD8yLU;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1722472807; x=1723077607; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J2OCtan7GqwO1p3ton9u1EX0GD45+ZqqVAY9M+M9Oug=;
        b=HRdv3nr4pyZGB3w38gCj37aFmZ4t1Xv1XWu9C7N5msx45Cg+lsI7UCnLzn1NK8LKGt
         YElr/iOgU/U1JDvOnADzLIZYq5Iuruu+tyDA7TmFkeQt/6Cmz9gjlGzeDmv/hdAKUz9r
         IHM/83fYGb6zMuzcGT+yexTaZkee8WAL5hUI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722472807; x=1723077607;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2OCtan7GqwO1p3ton9u1EX0GD45+ZqqVAY9M+M9Oug=;
        b=vBqDsRNveg6omTF/WxMdJ/zyTOvakEsSo9bOl6njbgp4dCjFlGPfeYvBCDxA7+h2AU
         c5sVL4k97wEi9lHNVNgHIbDmiEn24Hbfj2T9gbkwuqqIPcuO2llfOpKqF83YHFKxgIBr
         nf5ae0E3wA+wD53VkNHlB68jaDQ++tqcEtnjuhcKj8JcLJKDR4HQdIjnEiL+hWFFIjCs
         CZFMHJLUKtsvwGYIJ1haS3wNGH/douPp8kSKX/ACAex4TZvhW2xOA2UK27eT5ll4XhyZ
         2MdhJtVTj3GdxVXVPXBc/n9jHYQ7dV5s0CkI3sEtclQ+C+MX+9sMw+dWrpcPUYr1aWH4
         7vTw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXzNzUHORD1+7FWWgA6EB41fCqENJA4FGfCJzV6V4FYJaNND6sFidkFXneY6Yw/8ednsKb3vQM1ZFMsMZkEKwOyucFi+gS0riGK
X-Gm-Message-State: AOJu0Yz4jFS19F7jd+MgFh/JhHnA7347WI6emTg98MeaOT7DgPUNLk5r
	OXNpQu7rEIHglnPBy8N3B9o3+3sEDuEDyh62VuTeBpcI2tglHJpa4wqo+MYo9oQ=
X-Google-Smtp-Source: AGHT+IFer9gocFYskUaQY0QFmBALcAAKzbqy21lU0h48BJbtVphL/4RdB8V89Nc38mWQhkgxfrZlyw==
X-Received: by 2002:a17:90a:ab8d:b0:2cd:fa4:6523 with SMTP id 98e67ed59e1d1-2cfe7b24c54mr1102364a91.29.1722472807336;
        Wed, 31 Jul 2024 17:40:07 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:4803:b0:2c7:2285:963c with SMTP id
 98e67ed59e1d1-2cf20f4cf10ls1867552a91.0.-pod-prod-07-us; Wed, 31 Jul 2024
 17:40:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWPbdy0pJpmF8ByU8k1yqSIfZMNKxHFkHeMuFz+/d++PooHlfpqZDg9Sa3O3TkpOd2a2tDQkWNMmeLpN3ES7Izs3YpCfjqQSbQoLl8+px5zpwacbds=
X-Received: by 2002:a17:90b:4c11:b0:2cd:b938:770b with SMTP id 98e67ed59e1d1-2cfe775158bmr1101821a91.5.1722472806077;
        Wed, 31 Jul 2024 17:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722472806; cv=none;
        d=google.com; s=arc-20160816;
        b=Czpz98wAhYtOuakhNp5KPgtKMVhDykuJ+tyefhH/tbB05084PoiPITs8zESy/C6pOT
         MZwh7e9wVXxhkwgQrvfrhcetFgJZQIIKoIyWiYmv7VQ9eGKTLX/0DjoUs34MGHrulq4y
         Yn7HyI1hav9lt8Qu4XY9mI8nKof5m6lVl6fgKqV8bnMN6cwpelbXvBkZqHvymItkq2e5
         ZY7K9/0z5isooBtrgV7gUIzG5jaQfn3lwHvdregSp34va0fHLVLGdut8TX8JFX6P8taC
         uQd76xEcLSZIzq5LH4tNn44LJfNmEx1U3gNSv5BEqT+TSq0NBL3JM5cwWiDQoMd/Elfy
         v1FA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=D4XFuUqG1GOyyPvnJPgB8GqCq2+1ekedXFEnaGdZrqo=;
        fh=jgkb7am38yPjzZXkQAVozurBPG6OhskQIcxQ3YzqA1w=;
        b=YzLoJNNkushFvNH2I+lNQ9FdIBXDG4Pr25mn7t6Yue50vz8US39/zD00/utte3Tv/u
         c8z5jMfoOUcvLfoCHFUznkE7PZeBh4YiPRN6IWgdG6Z2HmjlsRbEYmRygsJ7iT12jRHR
         IsgFia1R35Hq0ConCV0pfMbfcyQ2HsMLHNLz70yWdFxMwlf+W5E0KgYHfYNkJ+cL1d8g
         Sc9chBDKW0tRvHMKmTCFmYgXcKiu5bnnM4Axx8ohEW2xX8TWO03dNVYuDgMybFNgCazr
         JeCccjSNfTE07KYjJynvkXMURpkzO3hmpwvDkHj6TDQWpEcq+ud4FTPz+bp6Z4f5Az7P
         nzaQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=F9tD8yLU;
       spf=pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [145.40.73.55])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2cfdc50e094si2562868a91.179.2024.07.31.17.40.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 17:40:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted sender) client-ip=145.40.73.55;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1BF99CE13BD;
	Thu,  1 Aug 2024 00:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3175BC32786;
	Thu,  1 Aug 2024 00:40:02 +0000 (UTC)
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
Subject: [usb-storage] [PATCH AUTOSEL 5.4 14/22] usb: uas: set host status
 byte on data completion error
Date: Wed, 31 Jul 2024 20:38:43 -0400
Message-ID: <20240801003918.3939431-14-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240801003918.3939431-1-sashal@kernel.org>
References: <20240801003918.3939431-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.281
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=F9tD8yLU;       spf=pass
 (google.com: domain of sashal@kernel.org designates 145.40.73.55 as permitted
 sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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
index 678903d1ce4da..7493b4d9d1f58 100644
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
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240801003918.3939431-14-sashal%40kernel.org.

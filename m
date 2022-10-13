Return-Path: <usb-storage+bncBDTZTRGMXIFBB6FWTWNAMGQETEOTMVY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x46.google.com (mail-oa1-x46.google.com [IPv6:2001:4860:4864:20::46])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED105FD082
	for <lists+usb-storage@lfdr.de>; Thu, 13 Oct 2022 02:27:37 +0200 (CEST)
Received: by mail-oa1-x46.google.com with SMTP id 586e51a60fabf-136fd83729dsf261732fac.20
        for <lists+usb-storage@lfdr.de>; Wed, 12 Oct 2022 17:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1665620856; cv=pass;
        d=google.com; s=arc-20160816;
        b=wi0mX+oLmzxiQ8hGLVC1EEnbQBit8OxWWCdP3FMZgUod+OZ8SrE04ZrmgZlPtsK0cj
         z2Rma0kPwvH97wTF4oQsGa9Ghtz6+2+ePY4HExwyae7Uddgapuk2t/E/bNsEi+aWrAHa
         nfZXug++HEw62AU1EAgm3obmL8nWbbS0sWsXw3ehv74d/xMHZ5Dhop8N3y7MaO8TJ3Qi
         cPHL/LHYfnkT5kqSRxNgqLVBHa8iyAqgm4eCPfUwEB7VluCXOOJBvlzSqXdsuCn87ylm
         tOauq1sod2zZnuMR6JpKP8025JuvcL/phVHnLa4Kw+Nh2C9/UmhrW8ZugyPohhynTl2s
         QOZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3C3QP9X0+xQOPvO5tExa5lm7sqD9nVJJ63hJdbtjOWo=;
        b=L2z/8orGckmNcVQJlrEpx85SZ3HvNaxfYWvR8I0msH5kQtc06Cy9iNWN2TFLZw4Uxz
         v2nyJp8Rk5JhGTo5YClMOd9m/uav95PmR6n3rXDzU5BT1hnenF2MKTsg0AnWzMOf/idb
         sXroGh4zaNoCi1Uf2PqGCXi67r4MD7kO9lvK1tXjTqtJQFlxuhaqCn5lLhM/fjHVs2op
         5HGDUvrgNhCi87zOD5NWVr3MXidy51q5oWU7NstUx3MIAQOh3Rtuw3AJJ1sVCpEZW1js
         eIjFn2TjfibmxAUGoLxDSmYvjpUdcwua6lWQJ067x6vvvOiio1+jVsdI+M0Fbs5LSR37
         iPAA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iDxyGcBN;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3C3QP9X0+xQOPvO5tExa5lm7sqD9nVJJ63hJdbtjOWo=;
        b=f/tTr3olQXzJDf44XLAU+MfBJl363U+oGrY+JERdavRWnPHuTzU6neKXJNGH7MHhMu
         r/o7ejF9IjrqUOfosZqjsCWki30p9wb3N6VjBJ08DqSzzblJpqjnD+NNc4Aj6rZmSOuD
         MUzS6m9Hx2dPEfQzB2fG/XoNDSrinvM4Yb8W8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3C3QP9X0+xQOPvO5tExa5lm7sqD9nVJJ63hJdbtjOWo=;
        b=wxSo9/sfsJ/JS2UPxM7KplLjZbtVfpMmToaQFl8JvXp3CyZSGfK7ZCPAH4E9T2V4pE
         BdFsLS8k+IUhEUQYiEm7beOYUwG8kmSbfri/jfQhQ2Wi75P0BKmkUOu7LKTuBUQF2SN5
         ozlVaKEu+s5A86NO2yifT9OdKWDY2XLiREgkLbZM+ormKlT/hZVPmKcH/8sIzOg2CUEQ
         SxzQlDbNsPe9ILhb6mfz12OexYNyZIwii5MVawMlBlwprIahoAJGGSAVyS1X5Mjj9C0X
         /Q3cgyveMxXQSvylqUg/kMQQ4paTuYnh7fZo0AHrPnW7PS7EbwktC/6LubInIHlw7wvQ
         7WWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf2vGEWWi1Q+uW3UigtfRX18vSVDdDEkO/UF3soDlfDhXKe8wZSM
	2c9hjwo8BDI58tsxsEe5GSMAPA==
X-Google-Smtp-Source: AMsMyM7tD7iPsUrZkUHjLBMoxkvaO+SMhaivAryDQHxngSVnFaRZazdoJxl45DYAB88QM/9IvXrm6w==
X-Received: by 2002:a05:6870:e88d:b0:131:87ed:c3c9 with SMTP id q13-20020a056870e88d00b0013187edc3c9mr3797970oan.181.1665620856223;
        Wed, 12 Oct 2022 17:27:36 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a54:4d9a:0:b0:345:bc21:cf7a with SMTP id y26-20020a544d9a000000b00345bc21cf7als122595oix.1.-pod-prod-gmail;
 Wed, 12 Oct 2022 17:27:35 -0700 (PDT)
X-Received: by 2002:aca:ab42:0:b0:354:93a1:1908 with SMTP id u63-20020acaab42000000b0035493a11908mr3447173oie.194.1665620855646;
        Wed, 12 Oct 2022 17:27:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1665620855; cv=none;
        d=google.com; s=arc-20160816;
        b=xwOecJbp3td0/7TljvdbSBjHkVMiqH2E9abgJAZvmKE8KCL7cTVKhMO9xEG7PIMJdd
         li/xBYYgWSb9FunXOdNyXgFEBoG8D1skopoW+/3JVYuxnv0X3uJtB+iuzJT67MvBthHe
         Ixak/iSQG4Bm/BMFN8kCapQBmFs54QvjKj0qIa9M0/hB0s3SvSek7v1ZSh8GGI+nlGyR
         sDZJjQOItqwfTXu+SLd24qjUOjeBlHGqi9T5PE+zSzIgsHAyz4UVLSQgm3YdCvZihIF5
         sQ4j+uUpzIdX1nL4gUFEhk7M9rvJs8HILIdaLiDtWEFHMDKalwZzBZVRPYBt/7wkZ8LL
         ApAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vhYg8W2CwIM8+T5wCkcq1x9zc7o2at96Px/rs+QjZjk=;
        b=T3xwVcT/SmroSL4B75ndGdStfkmufnzTDgXz0Yi+8tKZA11V9026YwDYxoJlEhQIPh
         8E0V4A5bKLMV+8I/Ndel2GywxGscUjj9QTmMThdWvoUzJL+qBkOfIy6pM3LOT/TLfSZn
         c3agWQ+1TyLpuod3mfILzUGI79qBSWX9AY4I554DgJQZKhAALLgdExePKqJbMaOZmFUg
         wzFgWqlejLH3iufWvSiDwKdlm2cwN9DG9390idVYb5RHVz/qwWX60UK3w3syG6DK3Tl+
         ZIw3XPa3xknlESTJVuIrjlFfjzTCSlMw83XmlAGEHxrFmujoFCkshb/igO0nqUweQps+
         fzSw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=iDxyGcBN;
       spf=pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [139.178.84.217])
        by mx.google.com with ESMTPS id t14-20020a056870638e00b00137140e01dasi729642oap.96.2022.10.12.17.27.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Oct 2022 17:27:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 139.178.84.217 as permitted sender) client-ip=139.178.84.217;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6DE2F615BE;
	Thu, 13 Oct 2022 00:27:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11B31C433D6;
	Thu, 13 Oct 2022 00:27:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: sunghwan jung <onenowy@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] [PATCH AUTOSEL 4.14 10/13] Revert "usb: storage: Add
 quirk for Samsung Fit flash"
Date: Wed, 12 Oct 2022 20:27:09 -0400
Message-Id: <20221013002716.1895839-10-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221013002716.1895839-1-sashal@kernel.org>
References: <20221013002716.1895839-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=iDxyGcBN;       spf=pass
 (google.com: domain of sashal@kernel.org designates 139.178.84.217 as
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

From: sunghwan jung <onenowy@gmail.com>

[ Upstream commit ad5dbfc123e6ffbbde194e2a4603323e09f741ee ]

This reverts commit 86d92f5465958752481269348d474414dccb1552,
which fix the timeout issue for "Samsung Fit Flash".

But the commit affects not only "Samsung Fit Flash" but also other usb
storages that use the same controller and causes severe performance
regression.

 # hdparm -t /dev/sda (without the quirk)
 Timing buffered disk reads: 622 MB in  3.01 seconds = 206.66 MB/sec

 # hdparm -t /dev/sda (with the quirk)
 Timing buffered disk reads: 220 MB in  3.00 seconds =  73.32 MB/sec

The commit author mentioned that "Issue was reproduced after device has
bad block", so this quirk should be applied when we have the timeout
issue with a device that has bad blocks.

We revert the commit so that we apply this quirk by adding kernel
paramters using a bootloader or other ways when we really need it,
without the performance regression with devices that don't have the
issue.

Signed-off-by: sunghwan jung <onenowy@gmail.com>
Link: https://lore.kernel.org/r/20220913114913.3073-1-onenowy@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/storage/unusual_devs.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/usb/storage/unusual_devs.h b/drivers/usb/storage/unusual_devs.h
index 8c186ab5b5f7..8b38dd7d89b7 100644
--- a/drivers/usb/storage/unusual_devs.h
+++ b/drivers/usb/storage/unusual_devs.h
@@ -1294,12 +1294,6 @@ UNUSUAL_DEV( 0x090a, 0x1200, 0x0000, 0x9999,
 		USB_SC_RBC, USB_PR_BULK, NULL,
 		0 ),
 
-UNUSUAL_DEV(0x090c, 0x1000, 0x1100, 0x1100,
-		"Samsung",
-		"Flash Drive FIT",
-		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
-		US_FL_MAX_SECTORS_64),
-
 /* aeb */
 UNUSUAL_DEV( 0x090c, 0x1132, 0x0000, 0xffff,
 		"Feiya",
-- 
2.35.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20221013002716.1895839-10-sashal%40kernel.org.

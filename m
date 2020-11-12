Return-Path: <usb-storage+bncBDS5JPEL3IIRBQUSW36QKGQEOWO6GTA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FEBD2B0D91
	for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 20:13:12 +0100 (CET)
Received: by mail-wm1-x347.google.com with SMTP id 8sf2149323wmg.6
        for <lists+usb-storage@lfdr.de>; Thu, 12 Nov 2020 11:13:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605208392; cv=pass;
        d=google.com; s=arc-20160816;
        b=em1r29G3sJDx79St6ueulMfXTyQT8dcpzWdDh8kOomsG9HEA8DXUKIaC8B2FkR7KHK
         q0KRPIxaq21vmCwLoLEOc+4gyVAAh5rBSHZBfaU9s/pDav2A0awoFh2R3bIQVr/mlP1p
         gliVUGBcFo/f2NWAqXQL3ezNzFjUpsGfNJ//eIDLRHlXr+NzBDltbJF9UEtqk8Mj36Tm
         1/PZsRe0xgg6nphAW937TLfb1dHixaRAnZb2I7kqwiOXrYDnZmDQOtArNmUVql15N2Ek
         PWl66F3PuNdB6Tvti4BJf87gjGTtkYbiBHNhcIixKIXjoCcoY9eeUnErMxvPiiYl3nfV
         LEFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=35fVro7l84xUdM4cgI2GQ2zZU9ImzgqKsk//n7zyFdw=;
        b=iVDTb8+ixJiPUCDh/foN8EWzkH79ljsV3VtDN39tbgHn0v4MZKN1CITwRdwQOI0/KO
         mI36ZckxaR5q52+VQOOLpteFmaGY7xeQP6d3ZiCnNgERYlF2JLY88KUXYtuhJ/DDby3i
         PA/5iYtm/cj0UHaKazLamdVxJFFxCHBZyhgCLaBUu0OJbWnuQnEEQxQNRT0WVf+oAybB
         A6TJrINyp3UMFoiLI0HEuARyEibfwhdpWBXA/CbIuESG24NOUU8uj//EzXWDopZE71Zt
         ppB9u0qthulKV5tYHWySZVcQJ5Z7S16yeud7xkZkI6oBv9/DipqRz2ByDMtdgBDCIrVB
         kW0A==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=35fVro7l84xUdM4cgI2GQ2zZU9ImzgqKsk//n7zyFdw=;
        b=UZKbiRHZGqQsEzemCGrnVSu4mBeCcn1xsJFbiPpkF8ih//48zpQZN3/2WdlKcmoG5c
         CeKQeCH49CPUDa8uvnRC5eBq08d4ee98H5um8ue9SWiBEr+WQivxc6eiZi9CZSKgqt5C
         uhkPXg+KxeSlI3LUNvXyiuv6on3b+dqqWhE8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=35fVro7l84xUdM4cgI2GQ2zZU9ImzgqKsk//n7zyFdw=;
        b=YXG7B+UGEzDE+shpaUMObXAKIK3/JtMJtRDlYsRVhchBYdNQNVpokBOshk2145SxST
         rpYdcMXi942rn4x9IC+QTjK6FsdQTQXKkXtqXc+VUBOx4rR7SeMrdgJZzDQDx4NANMBZ
         Nfl75cLQuFN1CTulENiBudWWvxX8rCM+x6femhbJZ0WNS+Mp1gkmvkXRcXJ2S0k+eXna
         r4NuxbPGnrRMUjvhz1xtBoyKyRWG/JZ5DzADPJVjuV6KlqL6mLzHK1keK8Zk5/OoPKu3
         uE8Rse7qwj28dgqWGRLObfYWa/2NwzTpOAM3YVZSRsk4SePcfZjU/ZubQ8tatjpPjsy1
         ninQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5315GNAQv6RG9k3PdvBA8W65V7GHtr7usygHVTxbgBnTmyX+6TkY
	oaaGqHEjhNwJJN3X7d2EjZtBpQ==
X-Google-Smtp-Source: ABdhPJwICKT9AeWJ4xXPSW966nGl/A+V7khDKHsh5oz2ffBjJfymQ5C9QgV3wQWfuMejm3Lxp+yf+A==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr1164636wmj.112.1605208387892;
        Thu, 12 Nov 2020 11:13:07 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:f70d:: with SMTP id r13ls2200346wrp.1.gmail; Thu, 12 Nov
 2020 11:13:05 -0800 (PST)
X-Received: by 2002:a5d:6783:: with SMTP id v3mr1117782wru.45.1605208385686;
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605208385; cv=none;
        d=google.com; s=arc-20160816;
        b=XsikxcT/HjCXV2aJWUi86pesrNyhYJ/uZjcdz29/jXTDXIdfGsJGVbGO4kGg5C1U61
         yaVZ+s4GDBhqhCWgS3R4hl20t5LLaIoNMKhWOZJfLNyyI3opZ3aRDbbFuRYdJu1jgYJT
         4bC9alHNCwn92CK8H1eURIAbKkWwNK34AtvKev0UR2YN//2Kr45d97H9CGXUdd+hZkz1
         PurDLbVaXIUa91/uTqbua/hJNMfN/lydVSsZd6tLK7bUeueANwhxaXVl3MiYZd/0cUt7
         ix4sMmQNclTp7PocEl4Nig57np/8UAXMP//nHOYKnwvA3IgGFCGaoD1zjHcqIFhVy0x3
         hZJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pdSRw9mlDHitGPfQBRUv6P8lG2F84sSOXhcflYqXKJo=;
        b=oCRkPvn+RnWN6E+j3nFrLyVwlyNrMClp4lcb1CnsnVZxzAofwnyHTGbA5LETiqJKnT
         VxzG4+61qyG+FAjaUE3RHEuuRyJ9Y79cEFpVXYhz6ieRILgYs2idRHllrTejzpS92P0F
         nuynpP1o/EgkoKkAHR0sBrI9wdk9w8VQNOrSIW8Djhgm/b/wSsom4t0xt/D4DQ43mI/q
         5pnLdJGL21osYfI+2R1+5MPo3vQM3vhIMv+z4L3S4AkHEY8fGyUVeJtnD1yhvU+uR1i7
         odICGo2aDr03rCfGWRZ5uL5at5R46VT8zDuOhQkADFei9yueKZc00WcDxc8KZncsL7aW
         8Ztg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id u23sor3612732wmj.22.2020.11.12.11.13.05
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a1c:b0c4:: with SMTP id z187mr1066051wme.113.1605208385297;
        Thu, 12 Nov 2020 11:13:05 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2d19:d300:649c:b988:4446:6d44])
        by smtp.gmail.com with ESMTPSA id 30sm427118wrd.88.2020.11.12.11.13.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 11:13:04 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-safety@lists.elisa.tech,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [usb-storage] [PATCH] USB: storage: avoid use of uninitialized values
 in error path
Date: Thu, 12 Nov 2020 20:12:55 +0100
Message-Id: <20201112191255.13372-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jVBu+ceL;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When usb_stor_bulk_transfer_sglist() returns with USB_STOR_XFER_ERROR, it
returns without writing to its parameter *act_len.

Further, the two callers of usb_stor_bulk_transfer_sglist():

    usb_stor_bulk_srb() and
    usb_stor_bulk_transfer_sg(),

use the passed variable partial without checking the return value. Hence,
the uninitialized value of partial is then used in the further execution
of those two functions.

Clang-analyzer detects this potential control and data flow and warns:

  drivers/usb/storage/transport.c:469:40:
    warning: The right operand of '-' is a garbage value
    [clang-analyzer-core.UndefinedBinaryOperatorResult]
          scsi_set_resid(srb, scsi_bufflen(srb) - partial);
                                                ^

  drivers/usb/storage/transport.c:495:15:
    warning: Assigned value is garbage or undefined
    [clang-analyzer-core.uninitialized.Assign]
                  length_left -= partial;
                              ^

When a transfer error occurs, the *act_len value is probably ignored by the
higher layers. But it won't hurt to set it to a valid number, just in case.

For the two early-return paths in usb_stor_bulk_transfer_sglist(), the
amount of data transferred is 0.  So if act_len is not NULL, set *act_len
to 0 in those paths. That makes clang-analyzer happy.

Proposal was discussed in this mail thread:

Link: https://lore.kernel.org/linux-usb/alpine.DEB.2.21.2011112146110.13119@felia/

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201112

I did some basic compile testing...

Alan, Greg, please pick this minor non-urgent clean-up patch.

 drivers/usb/storage/transport.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 238a8088e17f..5eb895b19c55 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -416,7 +416,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 
 	/* don't submit s-g requests during abort processing */
 	if (test_bit(US_FLIDX_ABORTING, &us->dflags))
-		return USB_STOR_XFER_ERROR;
+		goto usb_stor_xfer_error;
 
 	/* initialize the scatter-gather request block */
 	usb_stor_dbg(us, "xfer %u bytes, %d entries\n", length, num_sg);
@@ -424,7 +424,7 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 			sg, num_sg, length, GFP_NOIO);
 	if (result) {
 		usb_stor_dbg(us, "usb_sg_init returned %d\n", result);
-		return USB_STOR_XFER_ERROR;
+		goto usb_stor_xfer_error;
 	}
 
 	/*
@@ -452,6 +452,11 @@ static int usb_stor_bulk_transfer_sglist(struct us_data *us, unsigned int pipe,
 		*act_len = us->current_sg.bytes;
 	return interpret_urb_result(us, pipe, length, result,
 			us->current_sg.bytes);
+
+usb_stor_xfer_error:
+	if (act_len)
+		*act_len = 0;
+	return USB_STOR_XFER_ERROR;
 }
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20201112191255.13372-1-lukas.bulwahn%40gmail.com.

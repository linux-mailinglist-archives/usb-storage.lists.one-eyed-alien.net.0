Return-Path: <usb-storage+bncBAABBCWXYC7AMGQEU7QUNJA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A48BA5C0CE
	for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 13:24:43 +0100 (CET)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-5f32b797245sf6069056eaf.1
        for <lists+usb-storage@lfdr.de>; Tue, 11 Mar 2025 05:24:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741695882; cv=pass;
        d=google.com; s=arc-20240605;
        b=i8+IFwbzxQmsD/RvmOBxQ/Q0JaJJlia/eauck+haCQDylw+YMz44txaSSENjmkrJcH
         4xlKgKY5AhgUEkOw25mHAU+XEFp5Ndh0sdE+Vlp2T8uBxscgxxL3G7TDk9X8scgMyM8J
         7YVHdtzY5YTaMDw7tAeqqWqlzrTDAPZ1b1e6Diozo/XiTT4fdgfZCYkVieV5KLnYqsra
         tLvmzvDOjNPZ6TAqPpbyL5QcoVZhER/HXoSz9b4V1t7PxPkUUSkhRm7MTT07GQNGBRIC
         79pbirAtE0O9SBLjZb5oNL49EWVcYzNR4+lSHzZUM9eYpnCqRhD8peYy57h8wy1GKT0P
         FPKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=hNWR4+KzD0vGu+p011ZwHUOFxoq76AjC168ceZIlB6g=;
        fh=7odq89ehtwVI8KQiOBL1qlqNWdJBC+kzUvEQDEhIxJ8=;
        b=L6FO2CzM1Kq+k3ihR1y8FZfmI7qIiF/pFqd3ZRi/nBAVulT9hI9M1j7KG9lrPClUwS
         DreygT50sTzkh2mKfDNA2mbXjF+vsGeSx2EZtONvmHKihvbkFUaXFDC8N77iTPNuXJjO
         s7PcduhWQkt1grN5lQVr3lraGrjYzuqp0Yl7gt5ax8PmBQk4Qh0iCJw0qGE1fpACVk74
         +HGoQV8xQChO/WJLdzaiArdB+OMhg6m4bkrd8liZwLvvUA09nrLGzGw+vznvl5Zw/6si
         HJDQpamWGeT84kDpI+nvxB9JRrB8f5Ow0El8mF5NiR9f724kVVHn+7FiEaRnndJFOCr7
         Mw2g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=MAF5BcII;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741695882; x=1742300682; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=hNWR4+KzD0vGu+p011ZwHUOFxoq76AjC168ceZIlB6g=;
        b=bctQsfqrzCxcCM/zhqM4wpRlYGhdTwqWRS/iQJ29TG1jbAsdNMHGgXRoVesyutycrK
         T8hPbs1rMYjNeyCmwqAU7+KU257e/Zln3DaXPu+Vaeh1r1KKLdq+DlbbnOJc6qf6nsXf
         JYzVWP2OdL9ioxm9C0e1IFqhS8xJilLxiGncg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741695882; x=1742300682;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hNWR4+KzD0vGu+p011ZwHUOFxoq76AjC168ceZIlB6g=;
        b=bPMbTNHHWT/RFFMnEWgEU4QRH2d/8K9q4MoRZR3nR/tuh3clnR86rtry7OnqYBLd7n
         ZyDhB+Op9jYaKW9liaT67B8sLSOcQj8kAUsdfexjs1mDN2xefTcRyMVUYxIJrfFKQQvp
         QqAeBUCu0CQCzI1OA6wpBA4JkI+jY9PPaVH+tQcYNsPYqkWui9+z7n7A4tDrh5O3rsTf
         f4/ZlrIMfuzLEwCARtXFwfDZmx4O5bnezL1BOS20fAG0MLtkBXAj94kDMmRi7JxXFTf9
         0k82bmZIqRQmzUymp7Ad9rD/SSFuOcBedw+GUXPrxDvUnjsWlseCfrw7d2bmWVQNwntn
         20Ow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUUdIKN9420OggAauzxcNjr3KMhSexy1HB+ZqF6pB2C7VQmF7CiP7bxer4x82krdNdMYCkQiA==@lfdr.de
X-Gm-Message-State: AOJu0YyTxQDRcx1g+bUWTPMHO8Rkuxv+u+LOOi22lIuyBz2Z+yWzJjan
	W2yz3Za36M1UB80nJqXWP7xn/hX0Ffk3lPw3jmto87pHve9iIH0XEqQ7AS2RsrQ=
X-Google-Smtp-Source: AGHT+IEg9i51P2WSf4FW9+1SQNq7dsOxlUKVlxkIuJhNjPml9sL906QhgTwed/EzzjmrM0rK2m8Z0g==
X-Received: by 2002:a05:6820:1845:b0:601:a813:5f22 with SMTP id 006d021491bc7-601a81360d3mr6782037eaf.6.1741695882344;
        Tue, 11 Mar 2025 05:24:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGIf9s53ErRIBfg3h62p6GG9tuoVnuAQYqvZib9IKY/3w==
Received: by 2002:a05:6820:d05:b0:601:a5e9:6391 with SMTP id
 006d021491bc7-601a5e964e9ls678908eaf.0.-pod-prod-09-us; Tue, 11 Mar 2025
 05:24:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWb0coKtSr+IPCZUbRGuAAvS+MfCZjNM9Jgd2e1OaIl+9u/VY2hNZO0Vjan33Qlun++tP4AOnq1HCsE2Q==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:3c96:b0:3fa:d01:b94 with SMTP id 5614622812f47-3fa0d010eefmr2510268b6e.4.1741695881879;
        Tue, 11 Mar 2025 05:24:41 -0700 (PDT)
Received: by 2002:a05:6808:1b08:b0:3fa:da36:efcd with SMTP id 5614622812f47-3fada36f2a9msb6e;
        Tue, 11 Mar 2025 01:41:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWQHiOAK5L0+UR9QYpQc/6Xqi96AxahGCL1JapJRah1oRJXSj6RPM7rvsf7oOud0RL0GfsjstGFrpCgfg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a21:150d:b0:1f5:51d5:9ef3 with SMTP id adf61e73a8af0-1f551d5a599mr19943533637.20.1741682512742;
        Tue, 11 Mar 2025 01:41:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741682512; cv=none;
        d=google.com; s=arc-20240605;
        b=dacwBpivq/2uXlQMzBcgsWqjMtOInt6KmndlvOJx5pbHbRQv7MAiJqx0LNx6JzcxM6
         oOZnJMfqwwAHXHITIQXkHLKvgyp/LvLU51lWqsf6tXibx8Uyy6KU1dgYPU0RAV0ynNk6
         emTsvBBH30ddhMbrzlUUBvGGAZ/Oynuoa5itt1bH1NE9UVc3PgJtFNKoajN62+B+ozog
         o7BhVreeL1EYfsJJSBKOyFd+FcWQG2BpObTKcuoDqYh8Tfl6qzOkV2jRY1Mo80LQKro4
         kLY57tf+1axf8zT5G19IC+NhP/njX/2waPdrbYvNHdK3Q+vi+EOUkUdreLewAZUfZCBq
         tZCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=o+FJFa5kaj7HLyvn685I1Z/X9V0EfvMQq597XWpW6uI=;
        fh=hUdjgaJcP5m/l+kAKMCpGjOtcHbi0kfiHAyqoglLndQ=;
        b=C2zYXsSgMwSoSJMX05YMLlaGI2kZfxtkbS+BZn+3C4u3IT5tCz6VL/Ed2X5NGKJTw7
         m38p2m+68H/lxOjopdInudl745ja3t1yn3rxrSCvsT9hUOw+wtA1FBJkcgBfHuVnXr32
         HnSPVk4JXtFAa753v85Lh4JXmtcInUecQl2bv6m1qJmlG4fQxtJGU+oud7zut4gM+gnr
         t1gbIeGn+WRXJHZM23jj0WHF7sr6RQSaIYKdzKSALo7NiRF+nmEOawy/1cw3ZHYzEfS6
         l870JcOD4i9JYPSrQ1MGjpuKsmT9YwJUt09I7MUM0kG2+q3zMovNPRISTrja3awgDkLC
         EiCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@163.com header.s=s110527 header.b=MAF5BcII;
       spf=pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) smtp.mailfrom=daixin_tkzc@163.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=163.com
Received: from m16.mail.163.com (m16.mail.163.com. [220.197.31.2])
        by mx.google.com with ESMTP id 41be03b00d2f7-af529a0ec82si6639163a12.444.2025.03.11.01.41.50
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 11 Mar 2025 01:41:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as permitted sender) client-ip=220.197.31.2;
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wAH3uJJ989nKrBDRA--.23607S2;
	Tue, 11 Mar 2025 16:41:47 +0800 (CST)
From: Xin Dai <daixin_tkzc@163.com>
To: stern@rowland.harvard.edu
Cc: linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Xin Dai <daixin_tkzc@163.com>
Subject: [usb-storage] [PATCH] usb: storage: Fix `us->iobuf` size for BOT
 transmission to prevent memory overflow
Date: Tue, 11 Mar 2025 16:41:11 +0800
Message-Id: <20250311084111.322351-1-daixin_tkzc@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wAH3uJJ989nKrBDRA--.23607S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7uFy7trWrtF1kAFyxGr1DAwb_yoW8tF18pF
	WYgFZ0yryDXFWS9r17Ww40vFyrXasxJry7K3ykt3s8ZFs8Ca48Wr17tFyYqa4xGr1fu3WF
	vrn09ryUWF1DXFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0ptjgo8UUUUU=
X-Originating-IP: [122.97.223.167]
X-CM-SenderInfo: xgdl5xpqbwy6rf6rljoofrz/xtbB0hUN1WfP7sX50QAAs0
X-Original-Sender: daixin_tkzc@163.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@163.com header.s=s110527 header.b=MAF5BcII;       spf=pass
 (google.com: domain of daixin_tkzc@163.com designates 220.197.31.2 as
 permitted sender) smtp.mailfrom=daixin_tkzc@163.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=163.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

When the DWC2 controller detects a packet Babble Error, where a device
transmits more data over USB than the host controller anticipates for a
transaction. It follows this process:

1. The interrupt handler marks the transfer result of the URB as
   `OVERFLOW` and returns it to the USB storage driver.
2. The USB storage driver interprets the data phase transfer result of
   the BOT (Bulk-Only Transport) as `USB_STOR_XFER_LONG`.
3. The USB storage driver initiates the CSW (Command Status Wrapper)
   phase of the BOT, requests an IN transaction, and retrieves the
   execution status of the corresponding CBW (Command Block Wrapper)
   command.
4. The USB storage driver evaluates the CSW and finds it does not meet
   expectations. It marks the entire BOT transfer result as
   `USB_STOR_XFER_ERROR` and notifies the SCSI layer that a `DID_ERROR`
   has occurred during the transfer.
5. The USB storage driver requests the DWC2 controller to initiate a
   port reset, notifying the device of an issue with the previous
   transmission.
6. The SCSI layer implements a retransmission mechanism.

In step 3, the device remains unaware of the Babble Error until the
connected port is reset. We observed that the device continues to send
512 bytes of data to the host (according to the BBB Transport protocol,
it should send only 13 bytes). However, the USB storage driver
pre-allocates a default buffer size of 64 bytes for CBW/CSW, posing a
risk of memory overflow. To mitigate this risk, we have adjusted the
buffer size to 512 bytes to prevent potential errors.

Signed-off-by: Xin Dai <daixin_tkzc@163.com>
---
 drivers/usb/storage/usb.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
index 97c6196d639b..fd8dcb21137a 100644
--- a/drivers/usb/storage/usb.h
+++ b/drivers/usb/storage/usb.h
@@ -71,7 +71,7 @@ struct us_unusual_dev {
  * size we'll allocate.
  */

-#define US_IOBUF_SIZE		64	/* Size of the DMA-mapped I/O buffer */
+#define US_IOBUF_SIZE		512	/* Size of the DMA-mapped I/O buffer */
 #define US_SENSE_SIZE		18	/* Size of the autosense data buffer */

 typedef int (*trans_cmnd)(struct scsi_cmnd *, struct us_data*);
--
2.34.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250311084111.322351-1-daixin_tkzc%40163.com.

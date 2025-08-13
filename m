Return-Path: <usb-storage+bncBCC2JRVCV4NRBX6K6HCAMGQEIWJYQHY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 1325BB246C6
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 12:13:53 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id 4fb4d7f45d1cf-6186c87c737sf421725a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 03:13:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755080032; cv=pass;
        d=google.com; s=arc-20240605;
        b=kXNaspG2fT01NYLUEPW9jGVyQIP5EbbqR0Nj2O92PaDsAlfMF0A5sacUq0H8OakQCY
         1PCDjVEbC48X2cH+k/B+Je2ni30w6JGfw3rc32y0qzfToq8ygmwAfZYYIjZ3Hnw1FUIV
         b2h02J/hyJ3Y3uSxZ+F2AZ8w7HA2mzw9DpALPSgXnywBqInfqNMB3JvQdSV+7zblbZ+R
         Xi6hQ55uuIj5EXzXodJt3p+ONK06UQ5g/k9QnZNS7lvu72dhLbAMoopIsWFmcgvQdUNM
         XEMDysJLrZIctkiSor/+VJDKi91RQVYgbjqCvxiK7B9WAkN+yQIb2gnMsjjB+TGEI00N
         J6Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=2BbrW+7bUNECsc12m+4svxbVkDkviIQWPrO/4ApojR4=;
        fh=5xQFWWLzNYjibjglm0tFIDoiwap21enNaiqOnBdRjt0=;
        b=TEYm8QLJwYkqPWDqIrfJQCoyrITODM/ctwwYL+4lOD0a273KbWmYjorroKXRFxafl+
         fnLcjVnz0L2yndyZHgQNnixcI8t5pOapyEnsPyp6EJ/ZhQQhf4wMgHxhpYVA72hnIySD
         RmKpSCPPEH1B7SGWp4xBGD4kiDx95yw8BuTIcctjRuKVzd+D2YVBv3jzlJOSgGbdeONf
         xgcPuNXAfU6Tyh7o8nWJapxkSY/yPl4qnejKL00tsIuaIbWROjl9UoLgVQQTFctdeSLt
         0bW/UN+5MaSX0Xi9gDzE1MJdy+NcGnKzbMCNVBfQjabSwdCdIuREhz7CaBUwW3GJDY/3
         Angw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=nvUDsrfR;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755080032; x=1755684832; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2BbrW+7bUNECsc12m+4svxbVkDkviIQWPrO/4ApojR4=;
        b=lVQc/uik5dzG/qSgOHgsQUYS6f3q3XEuCEsIg+2Lc6ZGk/it8oQ2n/ZuWGTuqZjQnk
         GgGXghtdT8DM/haRoccM2lOQLDDTLtnlfZXpDdIDHvmC/5WUfzunzgd/rf9twFBQf4eF
         uu57iftcgnLuNSP9qACzCUWqHlQAkqnukcgkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755080032; x=1755684832;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=2BbrW+7bUNECsc12m+4svxbVkDkviIQWPrO/4ApojR4=;
        b=MzcnwBybuIQk8FjZzo0bzvGzvZI3PRNorxfx+N4PJbeI/sCLBuLVD5wMgJcRy1O2fb
         Crhjr3hZnKAgzJ4U1RgCwOV7jMubFiaDrZ6RcxjVyYFSiGJou/mZoQSFEbhOrn97rxNK
         HqQBDgsrqhAPXbNU8UNflVewF4ULSj+iT1lCTtgbzw7xdFaO/rW6eOd6p3fWL2wFXDOA
         PB0drRWzF57ffRUDlUZyGZCarDjn0wTHWtcv4FkbZJNa8K/Ekl1KTWXkb190mHnKGanY
         kyJe0aZy1LG14gvhPOvvBojEcoVBoKIgYUROCof48DXE4zMY4dGkLKCklvGNYDrjmIVc
         pFwQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW0tp4abZdZqimizNnk1+NwfHEAKXaJxTf9XSEQwOtpRZUwJqvq0gQd/wDoi1/K3jXQiLKqJg==@lfdr.de
X-Gm-Message-State: AOJu0YwfcGSv3p1JZ+3iw93pc6qPg0bAXXuZA6fzEV6RKVMA4SErxMGk
	44QHFtnD1dsY+5sP9DRen42j+T+4IEcYkcTFWph0WheX14aqEnyun4oHY5ufWhykGlA=
X-Google-Smtp-Source: AGHT+IGlcV9pG5+ubrZaLxkkMbSksLUHW/+p+wAMueMm2/3VVYK7cMhBZ1Urh1pYJgpsF/z5xeabog==
X-Received: by 2002:aa7:cc86:0:b0:618:20c1:7e3d with SMTP id 4fb4d7f45d1cf-6186bfe8db1mr1482594a12.32.1755080032250;
        Wed, 13 Aug 2025 03:13:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZdG8Qu4SePEp55ClY0IWdXqd1O0vfRf+ngpnX0RbSscMA==
Received: by 2002:a05:6402:1d53:b0:615:7125:5fa8 with SMTP id
 4fb4d7f45d1cf-617b1cd7ba0ls5283286a12.1.-pod-prod-09-eu; Wed, 13 Aug 2025
 03:13:50 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV3k+O0/u5C5uvoM4NlKjhQ5I6jkuG7IxH8Ry+qP1pa2pTymqTvFRfEQ+p4CXXwxSziS0XNksFFPgdNoQ==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:9410:b0:af8:fb0a:45b7 with SMTP id a640c23a62f3a-afca4d20e28mr236498566b.21.1755080029679;
        Wed, 13 Aug 2025 03:13:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755080029; cv=none;
        d=google.com; s=arc-20240605;
        b=QmYx5OLpQNIHKLb5GDdStUYhEacKwrhGRE2cNuutzNFH/mP4m7XRXjxAtn7wGfeRuR
         Th327zhYZRIBtC+JavDrZGvr7rBmvewRIk+sZz7H9Oghyfa54qKfyzQIXiP22ezxIi/k
         Cvp4vYMj9al1oUvJ6+zDdlwLHvh510dvahh35EizBQ57kw7B8DWkHfHV1GPRnYGtbd+s
         nTol0JzCLmeiLKz4nBtm2hiYboekmVhKARl2Ibv5SMbkEMBpcDatvaC9Ak44/mZeU8GB
         xgc7F46525ixvrsxuEHRjEJTkxX2GgdOA2fZGpmqd1bd4BcfhkGmVi32sTXdXKJ1TOVf
         S0RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aSS/JGql2rVWBGs/YfOqn5/C1ygBaFsXRhS+TJXTsnI=;
        fh=zjuZudG/84AY9U5EMM1K1kqQyj28sh8X2vByyQPlJ8s=;
        b=kMTk4ncVoEYazpgQ3vS7OwBYxVEKsfOFAv2H/rfI6rij/+sA1KbrBMiw5p0+yh9Gkf
         BCrtr5D5vrCHGKsrq7wE6VTV35ZJhJgbMBxjezgY8AQyzCjH9/3iDzwV0BHvys23wG6E
         w/c1GGk3hUZ4ZaKMrUFGy31L/YQkNhvunhNxEr8cdF/dYXSgoNsJ8iHy8AzIJYmcI1A4
         gfUYkgkqVvo6oeEogSokyFWFXNB0yvThgqvwEB8dgp5zQNm6GYhp0omRfnunU2azIf/L
         jfWTsDMQJl1P+IVAItZJW16xrduAPfnouoUewxvWS/QFcRtWuervKOFsEst2fFGLdxey
         Gzwg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linux.dev header.s=key1 header.b=nvUDsrfR;
       spf=pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.dev
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com. [95.215.58.173])
        by mx.google.com with ESMTPS id a640c23a62f3a-afcaae045c1si64678666b.1007.2025.08.13.03.13.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 03:13:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as permitted sender) client-ip=95.215.58.173;
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Thorsten Blum <thorsten.blum@linux.dev>
To: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thorsten Blum <thorsten.blum@linux.dev>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] [PATCH 1/3] usb: storage: realtek_cr: Improve function
 parameter data types
Date: Wed, 13 Aug 2025 12:12:47 +0200
Message-ID: <20250813101249.158270-2-thorsten.blum@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Original-Sender: thorsten.blum@linux.dev
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linux.dev header.s=key1 header.b=nvUDsrfR;       spf=pass
 (google.com: domain of thorsten.blum@linux.dev designates 95.215.58.173 as
 permitted sender) smtp.mailfrom=thorsten.blum@linux.dev;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linux.dev
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

In rts51x_bulk_transport() and rts51x_read_status(), change the function
parameters 'buf_len' and 'len' from 'int' to 'unsigned int' because
their values cannot be negative.

Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
---
 drivers/usb/storage/realtek_cr.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
index 7dea28c2b8ee..d2c3e3a39693 100644
--- a/drivers/usb/storage/realtek_cr.c
+++ b/drivers/usb/storage/realtek_cr.c
@@ -199,7 +199,8 @@ static const struct us_unusual_dev realtek_cr_unusual_dev_list[] = {
 #undef UNUSUAL_DEV
 
 static int rts51x_bulk_transport(struct us_data *us, u8 lun,
-				 u8 *cmd, int cmd_len, u8 *buf, int buf_len,
+				 u8 *cmd, int cmd_len, u8 *buf,
+				 unsigned int buf_len,
 				 enum dma_data_direction dir, int *act_len)
 {
 	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *)us->iobuf;
@@ -417,7 +418,7 @@ static int rts51x_write_mem(struct us_data *us, u16 addr, u8 *data, u16 len)
 }
 
 static int rts51x_read_status(struct us_data *us,
-			      u8 lun, u8 *status, int len, int *actlen)
+			      u8 lun, u8 *status, unsigned int len, int *actlen)
 {
 	int retval;
 	u8 cmnd[12] = { 0 };
-- 
2.50.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250813101249.158270-2-thorsten.blum%40linux.dev.

Return-Path: <usb-storage+bncBD64ZMV5YYBRBQNESK5AMGQEO6VWTUI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6DA9D88B7
	for <lists+usb-storage@lfdr.de>; Mon, 25 Nov 2024 16:05:39 +0100 (CET)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4669be6c87asf5822011cf.3
        for <lists+usb-storage@lfdr.de>; Mon, 25 Nov 2024 07:05:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1732547137; cv=pass;
        d=google.com; s=arc-20240605;
        b=AsuXB6BVGvCzyb9wmT8HJK0HlDKAL07PsVZSSrx4wOWaG2Dq/CKLMY1TgOkWS3F1TJ
         lGzLykuHBF97jnAsr9HUqBUhZ2+/Z3co/jc/PQbhEbmJKuo7TRIFYW7E0Ja5aXQjoRug
         /Ldg2ho/XB2R4fx5Do7oZpFUQSKEQDPlJZJzyY9HFDeIUyIgB0/knALAp0t48/yzUym/
         290SaKRmDHaBsQqE+lQ5Zvtxq6dh5z9fIyV/f51ZHAxzyGEl/PFFZD5tTTx1kOY/nsHf
         yGsmVrlFaR+v0JfBDkVsaE34ywIWqqAELgM2YzSYgOpitFeSdaudLaLedB02HoY4Lplx
         bU2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dI5yhJ7CHTB/8MAA0jk5NYgqKfE3mIOqUmGDaLf/I8g=;
        fh=MSu41r7aBI1NHHSIkWn07efQBBt0cSFSLC3FpJe3mgM=;
        b=DkTXGSCAOCMOUKaxtfqbKdnHxFoQWOu2SjgW86W05+4Y0yWPkM8XCruS2P1qEA1bpZ
         9Dnj7+9bpzx3D3lLgx8bVd34/vO5560ZY3GbP1RzcXUrxcqwuJA9zTKiUaiec/h5bhbf
         9un6L5extBpW/I4UJP95ERH2UHfq9JLAOdrth5LH3Bh0039h2vHrQssZmoh51whrgpYU
         yzR7vtrjOOdQ3HVskiNDWhGjjbPi14WDN1sKdTws37krPMRcXJxaP56/UeA5Gj4/8+Lk
         rkStVDiSCEQZ/H+0jWMwkrnmmhBKPZ7RWRGHbfnaa+IMCRY5sbi0KlHmxQEl2fXWTi2U
         Z4jA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="fW1d/Zgd";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.65 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1732547137; x=1733151937; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dI5yhJ7CHTB/8MAA0jk5NYgqKfE3mIOqUmGDaLf/I8g=;
        b=KTL/q7Gj8tbBBUcveucjaP86PZD6zWcWjByH3vCePT40y0T3Ek3uFhVQuOh3L6Y0cp
         5q2FKsursZ7iT00DJqa+xYfrqGKVtxu/hiKn9YQzN/F+TBkv/jUD//4xHkytYpnED/vd
         t+hUQmHSjLnu4L0YbdLriQ+vIEm0heDjvp3GE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732547137; x=1733151937;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dI5yhJ7CHTB/8MAA0jk5NYgqKfE3mIOqUmGDaLf/I8g=;
        b=b4hdaY/aZxC57tX4sF+fG8S8m7/vgfccjkT8QIxomFv5JSBtpUuXltzGx2QA3CvvOh
         l7fWWQnwkHRNs0mMj+uKjbPUWyTF+Tbk+mxfJxAQ95TMG+lz+Me6JlXsjt38V3QlCOE+
         nVNipy9mvproRVR0iIdFL3qZp+kNU7aIHvjHCEPYoVXpL6t/ptftAZpZEZsIpRY2qn/Y
         RJIobi3ienfZxJSkc+uFCDUp9tIv+Dpzcw8hDwxyYdWrw1CK3kRtqAmAoeazqRJlO2Fe
         bJllgF/d3bD2elfSXROrVOf0qCNjwSara0fPgRsC07tlb1rEqe1NuuwmHTRUPhd5Mm6Y
         2XTA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWfK32owR/O+44GpCVwlkAk1cjBSKHkHKOqDAvgM6snoxUHku/ThnTjvF8jyNlX8p5kRyKgDQ==@lfdr.de
X-Gm-Message-State: AOJu0YwdTtwuLROLnyB8eJiiTkabc5Ex2uvhe2CtEDHwW782lR+U0Sdq
	KphIBpym7IW/wr7onrd90m5S/v7W2XyeqgTW7wYT2U5D3iIRnLuKyHrSlKGFvMM=
X-Google-Smtp-Source: AGHT+IEmgTwieRku34e+WSZ/J0JsqVuJ5Q0sRLsGXkJVKTAGYfN5kxGW2WnJljoaxt9UhXBOxIkHzQ==
X-Received: by 2002:a05:622a:14c:b0:464:94cf:98a6 with SMTP id d75a77b69052e-4653d52df38mr209726671cf.3.1732547137363;
        Mon, 25 Nov 2024 07:05:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1a99:b0:463:1039:f939 with SMTP id
 d75a77b69052e-46539068cb4ls62417871cf.2.-pod-prod-03-us; Mon, 25 Nov 2024
 07:05:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUeBoXNt8f/XHEX6t4mYMZAohtaoyKEqOSzGR+MGrEAMr3vLkIoYTwM2AhbS50vXX9UDUQOq0lZnb9xjg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1b8b:b0:7b6:6765:4ca6 with SMTP id af79cd13be357-7b667654ef0mr492417085a.34.1732547136077;
        Mon, 25 Nov 2024 07:05:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1732547136; cv=none;
        d=google.com; s=arc-20240605;
        b=Ccy3IcVQ5tAY+ukjcdrRNUBoeO9OPxLWAUwsmq3ConPn8TkW7xJ/V+nJjpnwZz34mI
         gVQTcWsBCAmlCrzMC21Oy1GcZYDWIhYlbWjfumFtG9XlOa+hi07mfwKD4KM4WCtVJOm/
         R03FPMc/wr8dul6M0nWxSF/2LbrdPbv1+Eus9H3N4oj17b/riBQfognyjdoO8X3mStlD
         fAcM/C0w450sRVzDk1Ro6092zQZbfu2cFSOOPHVwy2DxTZVMeZTMV5KkZXueIRsFDRe1
         5sjcWiIZk8NUio9iU6cq42AbafVDjIb8NXdNkRizdPy27FCXq8DdBVqUNTUuwbPP6Gty
         zcuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eIcIEwreB6jMpQBW0713qszSdgFb5KeefQ1lDCrxAUU=;
        fh=uCA0lTlaxR5iX3RV6UgB921Jd5pYEzNoufdrqHYktko=;
        b=hsBTl/pcnqW9cGYBasjcMvut02hCLeFVUF5pAWCYYX+Z9xfMqQGaa46qx/mc9SI4nF
         OSIgJ/XgPrudp/I92jbqrYwTqpBo8N4A8flURLdr4knhH9mh6qSqWE2xJ15l0U/bM7S2
         XILupwsFk1r8LcnO/UFDdCMBvHhE8a9wYHaLmjZjbqScrwtfbjkJzeY3xdHaxwRKXVPI
         xk5gS0cUsV0R/sXRROxoEWh9dsh8DybRXHw8cZVcrvUELGzOIfetjTwbteaz7+cOcf/n
         GjYOgK/CleR/5Qp9W9Pdi6a1arDLRyLIRYW1G7QGS51Z9OA6DjwpP/NTto4oFpwsy//j
         mEWQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b="fW1d/Zgd";
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.65 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id af79cd13be357-7b66b12aea8sor212274585a.5.2024.11.25.07.05.35
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 25 Nov 2024 07:05:35 -0800 (PST)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Forwarded-Encrypted: i=1; AJvYcCXlOyhgt0MWMxnc4cuN+tAEbqtCttPVeJQxiyNT4NZfkbckkzB7owuCOAjfT+9YLRVUtyU2FmGDBj4avg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsTQt2faYp9U4I/nteSwq4bj0WPtB1qyUoJFqbqJwr9ayjZubGBGKAbVjg6DhP
	uIq3KsKfnd6cD7cPlLcaHxKjg64RukSeTWTZrgZ8VaKr0Wf43Bs6H2wkioaAtW6Seacms1yIC46
	Q5pGk+qBG7f+o1Io9iHVm6UgQVW11+hB0OSfXla0yBTwDYPq824nqdeKcazjxHCQHZ1XVrn+keQ
	BuEe9c9SQQ5eBZvlFPnOiKZvUAyXxnhnDaHEmaiLssGtz0OkgXtj17bAP10TrtOE9pn
X-Received: by 2002:a05:6214:21a9:b0:6d4:22e9:b8b6 with SMTP id 6a1803df08f44-6d4514b68dbmr185354926d6.41.1732547135280;
        Mon, 25 Nov 2024 07:05:35 -0800 (PST)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d451ab532bsm43616236d6.69.2024.11.25.07.05.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 07:05:34 -0800 (PST)
Date: Mon, 25 Nov 2024 10:05:33 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Dingyan Li <18500469033@163.com>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v1] usb: storage: add a macro for the upper
 limit of max LUN
Message-ID: <30019a70-d496-41d5-9159-c991ac93f326@rowland.harvard.edu>
References: <20241030083858.46907-1-18500469033@163.com>
 <56abaf44.86c3.19362571bee.Coremail.18500469033@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <56abaf44.86c3.19362571bee.Coremail.18500469033@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b="fW1d/Zgd";
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.65 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Mon, Nov 25, 2024 at 04:01:36PM +0800, Dingyan Li wrote:
> Hi Experts,
> 
> Any thoughts on this patch?
> 
> Regards,

It looks fine to me.

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

Alan Stern

> At 2024-10-30 16:38:58, "Dingyan Li" <18500469033@163.com> wrote:
> >The meaning of this value is already used in several places,
> >but with constant values and comments to explain it separately.
> >It's better to have a central place to do this then use the macro
> >in those places for better readability.
> >
> >Signed-off-by: Dingyan Li <18500469033@163.com>
> >---
> > drivers/usb/gadget/function/f_tcm.c          | 8 ++------
> > drivers/usb/gadget/function/storage_common.h | 2 +-
> > drivers/usb/storage/transport.c              | 8 ++------
> > include/linux/usb/storage.h                  | 8 ++++++++
> > 4 files changed, 13 insertions(+), 13 deletions(-)
> >
> >diff --git a/drivers/usb/gadget/function/f_tcm.c b/drivers/usb/gadget/function/f_tcm.c
> >index 15bb3aa12aa8..e1914b20f816 100644
> >--- a/drivers/usb/gadget/function/f_tcm.c
> >+++ b/drivers/usb/gadget/function/f_tcm.c
> >@@ -441,14 +441,10 @@ static int usbg_bot_setup(struct usb_function *f,
> > 			pr_err("No LUNs configured?\n");
> > 			return -EINVAL;
> > 		}
> >-		/*
> >-		 * If 4 LUNs are present we return 3 i.e. LUN 0..3 can be
> >-		 * accessed. The upper limit is 0xf
> >-		 */
> > 		luns--;
> >-		if (luns > 0xf) {
> >+		if (luns > US_BULK_MAX_LUN_LIMIT) {
> > 			pr_info_once("Limiting the number of luns to 16\n");
> >-			luns = 0xf;
> >+			luns = US_BULK_MAX_LUN_LIMIT;
> > 		}
> > 		ret_lun = cdev->req->buf;
> > 		*ret_lun = luns;
> >diff --git a/drivers/usb/gadget/function/storage_common.h b/drivers/usb/gadget/function/storage_common.h
> >index ced5d2b09234..11ac785d5eee 100644
> >--- a/drivers/usb/gadget/function/storage_common.h
> >+++ b/drivers/usb/gadget/function/storage_common.h
> >@@ -131,7 +131,7 @@ static inline bool fsg_lun_is_open(struct fsg_lun *curlun)
> > #define FSG_BUFLEN	((u32)16384)
> > 
> > /* Maximal number of LUNs supported in mass storage function */
> >-#define FSG_MAX_LUNS	16
> >+#define FSG_MAX_LUNS	(US_BULK_MAX_LUN_LIMIT + 1)
> > 
> > enum fsg_buffer_state {
> > 	BUF_STATE_SENDING = -2,
> >diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
> >index 9d767f6bf722..e6bc8ecaecbb 100644
> >--- a/drivers/usb/storage/transport.c
> >+++ b/drivers/usb/storage/transport.c
> >@@ -1087,13 +1087,9 @@ int usb_stor_Bulk_max_lun(struct us_data *us)
> > 	usb_stor_dbg(us, "GetMaxLUN command result is %d, data is %d\n",
> > 		     result, us->iobuf[0]);
> > 
> >-	/*
> >-	 * If we have a successful request, return the result if valid. The
> >-	 * CBW LUN field is 4 bits wide, so the value reported by the device
> >-	 * should fit into that.
> >-	 */
> >+	/* If we have a successful request, return the result if valid. */
> > 	if (result > 0) {
> >-		if (us->iobuf[0] < 16) {
> >+		if (us->iobuf[0] <= US_BULK_MAX_LUN_LIMIT) {
> > 			return us->iobuf[0];
> > 		} else {
> > 			dev_info(&us->pusb_intf->dev,
> >diff --git a/include/linux/usb/storage.h b/include/linux/usb/storage.h
> >index 8539956bc2be..51be3bb8fccb 100644
> >--- a/include/linux/usb/storage.h
> >+++ b/include/linux/usb/storage.h
> >@@ -82,4 +82,12 @@ struct bulk_cs_wrap {
> > #define US_BULK_RESET_REQUEST   0xff
> > #define US_BULK_GET_MAX_LUN     0xfe
> > 
> >+/*
> >+ * If 4 LUNs are supported then the LUNs would be
> >+ * numbered from 0 to 3, and the return value for
> >+ * US_BULK_GET_MAX_LUN request would be 3. The valid
> >+ * LUN field is 4 bits wide, the upper limit is 0x0f.
> >+ */
> >+#define US_BULK_MAX_LUN_LIMIT   0x0f
> >+
> > #endif
> >-- 
> >2.25.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
> To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/56abaf44.86c3.19362571bee.Coremail.18500469033%40163.com.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/30019a70-d496-41d5-9159-c991ac93f326%40rowland.harvard.edu.

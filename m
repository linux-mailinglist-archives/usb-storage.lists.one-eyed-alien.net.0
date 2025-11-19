Return-Path: <usb-storage+bncBCO3PDUQQMDRBBMZ7HEAMGQE6LLQMFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id A2418C7168F
	for <lists+usb-storage@lfdr.de>; Thu, 20 Nov 2025 00:02:41 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4ee09693109sf6290721cf.3
        for <lists+usb-storage@lfdr.de>; Wed, 19 Nov 2025 15:02:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1763593350; cv=pass;
        d=google.com; s=arc-20240605;
        b=D/i7vOmvUyOcjBwNo29eptVsxeO1TP8z5HGfbErdJWVT7BHS1vkxlQmWI9RXqK7HEr
         cvAILE0/AR77biX5VzInJgXla0RCVcguni3Qu2cEiOJ3ar1dczM14OtdkBiz3Bf3dEZU
         v01GMxYY1mBOB5Ybeh6tqcgzZKNTEN1cWwIB4z5Yf2nIbnbw4RbCH9+nfNNGDK6/XvV3
         fA+xIzbmD9rMSUqMJlWeimXNZRvDJDuhXX7JEKT63nmq8lgXJSuAv/V6WUdO8VP7FW1D
         2nM6vS6pXBBW+NfuOf5YbExUbPRbZUljwyOUOEo1kB3P28ywjrf8RVkFT+u5mN0lAsy4
         BbNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wXX8fQGOzjFVUAJgFud5xLEpldg5BlBqitwKQDQtDpU=;
        fh=8WyckiietTOTHwqjtGoTaizufPFq/dycApBBQUfn690=;
        b=V2Cxn/0chiZWwlIlxVPDKZfaBtH8hHz+kh01FRxdI9+jSwM/EjF4gOamW3kfqjIHIn
         X0h69bbbtvzHuw7E7POhKQ3aborIrUQAz3KKkDwdi5xWlM0dlXiygAo7rP2Xt5mjjcyI
         N3Xxb0V4AcipiraQswe/+461te5cP2XaBJoy5Ppa52gBgig0aXFgHr+HA8g17h06u7uq
         U1FvzgnFrnqNaJzWzHitVRegrU6O3z5faet0YXQaRzW4+V5+ki09Wbi2/TDHG+f2cRXq
         bYeML9psr1gzTaGkZZtxjYK0cA/o7D9w37gj0p8RZRzEqgSbdJoSMKzB88+jVMH8WOYv
         hXjA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@runbox.com header.s=selector1 header.b=PlFDAXm9;
       spf=pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1763593350; x=1764198150; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wXX8fQGOzjFVUAJgFud5xLEpldg5BlBqitwKQDQtDpU=;
        b=Gh+9HtKqBQIi46hywrfOkXPSneWuXJ9X+z0EDlWU0jAU7YUbhYpH9Pc5xRRdwrViig
         0BzHD4lYHX/QrWlIGqwqVa9i23u2qG1/vW0sCukiJ6xuEI9bW3BfZhbBpLCFHfbogw8K
         F9Vhh78Yw55hSizDZWSNlfskib9A3/xi+YcA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593350; x=1764198150;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:references:in-reply-to:message-id
         :date:subject:cc:to:from:x-beenthere:x-gm-message-state:sender:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wXX8fQGOzjFVUAJgFud5xLEpldg5BlBqitwKQDQtDpU=;
        b=fUt7Vuq0wbK05zajNZREDOKrieolu2zCKc4BuhojD3y+VBL3V4cNsH30D7GHWu8Wwn
         N/KkF4oC/hhcPq1qmxtXfWkek12snBPmns03hM/wWWzf7bSUzrSsdSFmFLOAIzSAafFo
         L0j1XFlduq1xC139jUiHwEbZ4IQ6nIMb2OKFAVa2BvceA2E6cdJzkJLKzfYtMQ7e7Qup
         F+zUi3nvMrCDhk7OcuosN4T9u+T7Wn52fZTerAnYkMEVNJp+gidI4UPkut8TQeJAJuAH
         uzsXyx+IDGT8aAGUd3L+PXaNvOlQ2Lmj22nfs+ttxv1IYZUCix42fozZ+xXHdGnucMFp
         vvxg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXYSIwNWccXcMo9tRLCktdufdM6KdV/MyqiF8WT7OXuYH8CiH/7ba8uHSVLR2qk0pQLAxha9Q==@lfdr.de
X-Gm-Message-State: AOJu0YxNV8qJsKUvgyP9xJRujSiGUJauMy5lljjS00pcwK2eu01jeC3Q
	UF8VXLOjDvOa5kwLu7mCQQBC9SS7F0P3CxXHz5U6Bv3j0Iho0lXEFyYpEXsQy5PAAUM=
X-Google-Smtp-Source: AGHT+IH/ko+eoFvZxtI9wZecMVU7uDYK1WM4ZI9W/2V2mIjpbI+kJHYex15zkwDxqWdJtm3zKtmeMg==
X-Received: by 2002:ac8:5a43:0:b0:4ed:a6b0:5c26 with SMTP id d75a77b69052e-4ee49685315mr14778481cf.58.1763593349552;
        Wed, 19 Nov 2025 15:02:29 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YCBCB2AA56vdHJexIDKO2BVziWUP5EZGbh1Ivh/Z5TYg=="
Received: by 2002:a05:622a:85:b0:4ee:1544:bc7e with SMTP id
 d75a77b69052e-4ee4912073dls6182441cf.1.-pod-prod-07-us; Wed, 19 Nov 2025
 15:02:29 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVan9GStMBf4cAn9IH+8hoYqC9NmFQmytvK+iOUqgd7KTPXDa/7lgcRnK0ux8vwkSp956msXCUxcMJVnw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:44d4:b0:893:31da:1028 with SMTP id af79cd13be357-8b3274b5313mr167234485a.90.1763593348891;
        Wed, 19 Nov 2025 15:02:28 -0800 (PST)
Received: by 2002:ab3:1c02:0:b0:2d1:a641:6210 with SMTP id a1c4a302cd1d6-2d1c47211eamsc7a;
        Wed, 19 Nov 2025 14:42:56 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWJoG4Q3I3UaIVC8khVaMVbFCF6k7U8UAIZ1bwnrKdmrLCzcPfLVbTsODoUCyOuy6pdFp4Cn3kYUP0s8g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:2392:b0:595:7d95:eab8 with SMTP id 2adb3069b0e04-5969e309fe5mr174332e87.23.1763592174751;
        Wed, 19 Nov 2025 14:42:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1763592174; cv=none;
        d=google.com; s=arc-20240605;
        b=kKd0vjNc+k7Pn41MOeZ9jaUAz35Zf1OLpRisc6+kfu7/a/DryVyiCr6xDDQ1lhMOJS
         GVdX9RkYXiQeuY+5t6Ek7JVvqSckocys5jBTxtr4SBHtc1jfqbe3dmZqhY/+iTMoA3fL
         Nm4gwne6HlC8U+r1dWU+ZzwtB73MMUT+cxkU/8xOZBOcQ68At/1ACIM0BAa8R7xRZ+1e
         kWZa54nljqIxu1ir0RiGHYMSt7BTqYuzT6w2VN9S3BeMqLa6WLkRwBT+Xm+SsfT+xyc2
         0xIOtXUwCC5YKTMTHHvtUP7krNoVIXFkn6Nu4tHTZFeSmhrhfcrI5ixzL9OlZvLjuCVu
         imBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kOefzjf50j/74iGOTPMlZK++sMONcJKR9VFlFhM1mCo=;
        fh=issbIi7oaKTDKmQ6WUdyRqybdEFlA4KlpNHuceGsAWw=;
        b=hNQ2K5M7jl/EWw7X6BzUjN2eNTacKnmzB4zkkV6CZkXZLWM64p8UsDrOL4YpZMb1Qu
         1OfxYMz7ThpmYeiziRk6QBDXj49ZVGludIr3kQGSeNZXnuEiUs5w57ZVF1IS0G1ARBp5
         xZpUlD3lZNYB5LUbXlTCTs32ewgUzj3Xd3narQPQeGstwwHss/I67JXwP6Aj65Wb4W3o
         8JGfQik7ungu3njVYJVsBrpvsD6qW+cNk6HnihD/0ilnTxhtWqA+yM29HhHDHMrbsOde
         kiyos/i5+CtQXciFbkuWQdPb+a+aaWUtc9YJpfXBZHZ2g9dtuOtZKN+GbahOiJzokfUw
         Irlw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@runbox.com header.s=selector1 header.b=PlFDAXm9;
       spf=pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mailtransmit04.runbox.com (mailtransmit04.runbox.com. [2a0c:5a00:149::25])
        by mx.google.com with ESMTPS id 2adb3069b0e04-5969dbe3041si111533e87.931.2025.11.19.14.42.54
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:42:54 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight.linux_spam@runbox.com designates 2a0c:5a00:149::25 as permitted sender) client-ip=2a0c:5a00:149::25;
Received: from mailtransmit03.runbox ([10.9.9.163] helo=aibo.runbox.com)
	by mailtransmit04.runbox.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1vLqt4-006yxN-8x; Wed, 19 Nov 2025 23:42:54 +0100
Received: from [10.9.9.74] (helo=submission03.runbox)
	by mailtransmit03.runbox with esmtp (Exim 4.86_2)
	(envelope-from <david.laight.linux_spam@runbox.com>)
	id 1vLqt3-0000EA-OW; Wed, 19 Nov 2025 23:42:54 +0100
Received: by submission03.runbox with esmtpsa  [Authenticated ID (1493616)]  (TLS1.2:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	(Exim 4.93)
	id 1vLqsi-00Fos6-26; Wed, 19 Nov 2025 23:42:32 +0100
From: david.laight.linux@gmail.com
To: linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Laight <david.laight.linux@gmail.com>
Subject: [usb-storage] [PATCH 28/44] drivers/usb/storage: use min() instead of min_t()
Date: Wed, 19 Nov 2025 22:41:24 +0000
Message-Id: <20251119224140.8616-29-david.laight.linux@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20251119224140.8616-1-david.laight.linux@gmail.com>
References: <20251119224140.8616-1-david.laight.linux@gmail.com>
MIME-Version: 1.0
X-Original-Sender: david.laight.linux@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@runbox.com header.s=selector1 header.b=PlFDAXm9;       spf=pass
 (google.com: domain of david.laight.linux_spam@runbox.com designates
 2a0c:5a00:149::25 as permitted sender) smtp.mailfrom=david.laight.linux_spam@runbox.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: David Laight <david.laight.linux@gmail.com>

min_t(unsigned int, a, b) casts an 'unsigned long' to 'unsigned int'.
Use min(a, b) instead as it promotes any 'unsigned int' to 'unsigned long'
and so cannot discard significant bits.

In this case the 'unsigned long' value is small enough that the result
is ok.

Detected by an extra check added to min_t().

Signed-off-by: David Laight <david.laight.linux@gmail.com>
---
 drivers/usb/storage/protocol.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/storage/protocol.c b/drivers/usb/storage/protocol.c
index 9033e505db7f..0cff54ad90fa 100644
--- a/drivers/usb/storage/protocol.c
+++ b/drivers/usb/storage/protocol.c
@@ -139,8 +139,7 @@ unsigned int usb_stor_access_xfer_buf(unsigned char *buffer,
 		return cnt;
 
 	while (sg_miter_next(&miter) && cnt < buflen) {
-		unsigned int len = min_t(unsigned int, miter.length,
-				buflen - cnt);
+		unsigned int len = min(miter.length, buflen - cnt);
 
 		if (dir == FROM_XFER_BUF)
 			memcpy(buffer + cnt, miter.addr, len);
-- 
2.39.5

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20251119224140.8616-29-david.laight.linux%40gmail.com.

Return-Path: <usb-storage+bncBD6LRVPZ6YGRBYEFZL3AKGQEWJUSSLI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C11F1E926D
	for <lists+usb-storage@lfdr.de>; Sat, 30 May 2020 17:59:30 +0200 (CEST)
Received: by mail-il1-x148.google.com with SMTP id p20sf4976441ili.16
        for <lists+usb-storage@lfdr.de>; Sat, 30 May 2020 08:59:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590854369; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yg2K3+Qu9Mw5qc12EWVlnPQlEzMZ4DwRKkWwwTEW398Fk9wec08pie2m20H4xnlByq
         GSwZXPnopoRbspECrok3aknw7mN6S3E7Hb8bUXlISZDMH5qAHhlz5RRpumWk5y0d65Qp
         /xvSIVNUfDWl3Y50EtB2hW93x/4gryPMEFND8y1Pe638zBPhYZBWh/U+sqJWyDo6o615
         PQDbhqSMj/maY66oOV8je2F+uuH/x1TbTVR5cMQhn/OndcLgCYEZzuQQX1Md+YDxgtkr
         G1byUHzPt/mKE1fiqdRtQT/jmwikAsMjKY7WwFxYxjDS0eoMI9OjewTsk6f2y0dOHv6f
         9b+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zFyxXl9ZrNCPoVJBFBh9HHaxmslbT/QVF1uRF+lp2b4=;
        b=Y4YDJYNE6JIF+3iP7oMNDyaSjaL/eyX2JravpvLl0Me+O8vnXJSYVW2tzUXFw/5RrI
         dT2uI3CWFvunpHzpcV+nbVwPnyPqO05TV7nSPfTDfOtL/EDQRM/EnhHHcRmQAnFRNpF/
         K0SXPTGvd2nt+eb1BWuPBmMH1ZyRnfDviDz4vmlnTbOFPXE8zFoLpcfPTY2xbcB59FYT
         tXMoNZvR0h2yWoXzDYP62gafbBgc5ZijsMlNGitz1THJGNr1PB7rKEOOOs9RlxxT2W7W
         aJxR/MgJkyynfhN9wHWiMMGYQdzOmnLa2P8Z1QK/0DJEcEbby+o6sl5eJ4UNG16SOETb
         K3fg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zFyxXl9ZrNCPoVJBFBh9HHaxmslbT/QVF1uRF+lp2b4=;
        b=E2rU0dipUofVAX7Jxqe9YFbDJEP67KASp72TnwGi3fPWQXxfQJaWjRPNPLMfw+3Wfj
         AuyVdmZD5Z1LBGEAQZjGE2DWyW2u46BzyeF4J/Jj5L5n1CtTF5UwtCNZyVR87pxufc16
         PmwexYxEe8RotpXNkLPZX88DsctopL4CqCtEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zFyxXl9ZrNCPoVJBFBh9HHaxmslbT/QVF1uRF+lp2b4=;
        b=tXjcXHLKSK5w0Km1PyY6P4fHl0GbAXN1uW15HoKZet4uFmwMRTZxjqe+HQHKq8VDZ2
         4HAHNdcaHR7Bri0AW0MBkB/xqPtzYYWGkAvSLGn6iRy2Z9X1WWesC4swPukkeeMB4QOW
         RyF2fNiuuRsErXE8i5HCPDQfjzwIkDAtYW6gteA/Gy/4WHg2P5CqyVDpyZbseTFSe93K
         WSj1ET8JwQPJMjTQZKHg7R0RnlVnP5Ki5CkTqzRZgd1KWEV7gxeooWjSvQJ8w5ooed5R
         Exwg897D3vOrXrU1TOBNwKYLb9SKJQuDgAIFvaTyE3o+o5BEp2yF20clPQA6aU8pNs1F
         1l2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531qcrbbBhMTwlw4kI5Ra1LuMqQPezLTklRwt2ga8Bdrr+nWzrxg
	qEH8+gsvu+L0bXVFQnSXgQnUbQ==
X-Google-Smtp-Source: ABdhPJw9bQqEe85N16L8YEWBWxPw9KjSlIZ2LOXL45bbQByeno+OSImF4iOt+HeyW4aFM8jqt0YHbQ==
X-Received: by 2002:a92:2a06:: with SMTP id r6mr12075338ile.121.1590854368875;
        Sat, 30 May 2020 08:59:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a02:9716:: with SMTP id x22ls1220780jai.3.gmail; Sat, 30 May
 2020 08:59:28 -0700 (PDT)
X-Received: by 2002:a05:6638:35d:: with SMTP id x29mr1728042jap.71.1590854368325;
        Sat, 30 May 2020 08:59:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590854368; cv=none;
        d=google.com; s=arc-20160816;
        b=IVYnMQlKjOe1+wJC87dlCbLsHI8ciZUuL5NnfthMKLQBikmzIFmIs8NVXx+U2Ef0Pa
         6gaKkTZSe+a9I3M2cSWLVuXbFKDksMpEgrjinT82p7obMJyjse61YNTdKTprWwOzzk6q
         bbtUoSSyD1MGi4EcKJlozJPKQXvr6eWYedLgYJPw4vp4bXni7jDSHrWw1AtoTng8zAxH
         L3IMOBR5JGFa6za32JLKkHwhzMYVAX5ffBLl8qu92NJbkB0Mbi0SCr8dVn+NAPXFfTOj
         paQowuuMPchZFYZaL2yEUiQjg2+lFbDEJ+y6WKn2qpq5g/7vqynctWydWFELSxzGLfJK
         K+HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TS3FPLdwegYomEtqTxo9uKImHgR38EcfF7l0v6lqQyE=;
        b=oQmlzty1rf2fL9d6hc5r+mvm9gJRLxKpG5+muGSva86CNc5gttTX10xJLlFbtP9yWA
         M8XKLWJyNxd5TgwM1BlgCD7uOtggBcX3m6M4prU5WZznK11L5STqnd6XaGpBAKsOWIb7
         7zAVPddS8hbGZz8Yn2e7THdo51aaY2YF5JnLJ/+P3t78xvOiEH1aVVNP7ZqSKbsuAseI
         lV9alJBsMybO5yWz6UIRWK0PPHE4KA3VRY54axz26O9IhotewPReLnNAisXTcfWo+xox
         8SE1qXf0qOIQ8ASel+KQ414nGzMqaspexdfdO8596MPyURHsClBOdODBfGPdULyjAbyT
         CEeg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id k21si9909074jad.67.2020.05.30.08.59.28
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 30 May 2020 08:59:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 30265 invoked by uid 1000); 30 May 2020 11:59:27 -0400
Date: Sat, 30 May 2020 11:59:27 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jia-Ju Bai <baijiaju@tsinghua.edu.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  Jia-Ju Bai <baijiaju1990@gmail.com>
Subject: [usb-storage] Re: [PATCH] usb: storage: alauda: fix possible buffer
 overflow casued by bad DMA value in alauda_read_map()
Message-ID: <20200530155927.GC29298@rowland.harvard.edu>
References: <20200530144230.3550-1-baijiaju@tsinghua.edu.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200530144230.3550-1-baijiaju@tsinghua.edu.cn>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
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

On Sat, May 30, 2020 at 10:42:30PM +0800, Jia-Ju Bai wrote:
> From: Jia-Ju Bai <baijiaju1990@gmail.com>
> 
> The value us->iobuf is stored in DMA memory, and it is assigned to data,
> so data[6] and data[7] can be modified at anytime by malicious hardware.
> In this case, data[6] ^ data[7] can be a quite large number, which may 
> cause buffer overflow when the code "parity[data[6] ^ data[7]]" is
> executed.
> 
> To fix this possible bug, data[6] ^ data[7] is assigned to a local
> variable, and then this variable is checked before being used.

There are much worse problems than this in the alauda driver.  For 
example, alauda_get_redu_data() does I/O from a data buffer on the 
stack; this is not allowed.  That's just the example I noticed; there 
may very well be others.

If you want to fix something, fix that.

If you're still worried about malicious hardware, the way to fix the 
problem is not to change this one location.  Instead, you should modify 
the driver so that us->iobuf is not stored in DMA memory.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200530155927.GC29298%40rowland.harvard.edu.

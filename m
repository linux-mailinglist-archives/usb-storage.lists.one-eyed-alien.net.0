Return-Path: <usb-storage+bncBCF5XGNWYQBRBCUQQWPQMGQE4EXWUIA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x446.google.com (mail-pf1-x446.google.com [IPv6:2607:f8b0:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 088BB68C5D8
	for <lists+usb-storage@lfdr.de>; Mon,  6 Feb 2023 19:33:49 +0100 (CET)
Received: by mail-pf1-x446.google.com with SMTP id k14-20020aa7972e000000b00593a8232ac3sf6904718pfg.22
        for <lists+usb-storage@lfdr.de>; Mon, 06 Feb 2023 10:33:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1675708427; cv=pass;
        d=google.com; s=arc-20160816;
        b=azMRRSSwQUf0rBhGx8JqXuafSLLR587oc6NqCDy1ILR4x2GAXc8KTlcl1Jp3J+GI5B
         g1uSwsStWmZ+5fOy1fwVF40IHCQWXSA9qkKFtVRDkwNc+KSOt0suDL0I4R3PeVm2w27U
         kJoau6CQJazQLX3/7YzFlPw4DpIi6x7OCyw64T4DbYkuuyAiZFwfIqKxqRIDAScCtEwH
         f1DOB9ztjCGy0eAIU7Xqx5aqg2k+JFdRgF+POcqFbpTaaqjQ5/GH5GVsskiqDi0kbWRw
         5z6i3/URbF6xrkX0vdj5AadQ+rGrFTZhq5C8tPkNCjzKzTOjDuz2FrwTJPgFceindAWh
         UR5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:subject:cc:to:from:date:message-id:sender
         :dkim-signature;
        bh=hdiztUreQiIEFh7OYzoOCFmDHdYKonm9Sgs3M2NpSGA=;
        b=S9d0mZhJHTZjB45xjI7R6RZXqIvHGmiaZxiI7AHQ7KIAws6YWKmDgUO1ci1mHDM8NN
         Fy9nDY5qXgPDbNMRBa19ZfTpipf8k9cIh7nvwQ8051CpCPbsD6HjXVc2VwlXUYIGuQTw
         36mCQ1cvVJ0mqhLvKYMAFPYd0v0I/SUlzbpnYONdQxKgbVzZ+jYlv2hrtFaB7n5YLOrP
         o2pmCIYcsSgzTrUTmXvdSi1+4LlmMSQ/+exiDK0yhHRTYiJdyl3XTvGMXKvbxCJGpKti
         JcGR4ctU9QARHtlEa41oPeAsVhH/Tq/9UH/GiY6xDe/NQchN9sCP40RBWr7ORAsHexru
         C7nQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a8JT7ViE;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:subject:cc:to:from:date:message-id:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hdiztUreQiIEFh7OYzoOCFmDHdYKonm9Sgs3M2NpSGA=;
        b=NvlbCKPXnFdYdAttv7X6mKu/Uf0f62DmEjQ5ubQrQLHZ8U2OmHBRN8HRI8fsdna0Ia
         eQrNFBeHHD2diLvVHzadyPU3G7vHQ8DV9pdOfOte9goVCAQoOvRNSzi6ZNyYk/uwKOzK
         ZvKp0tgPeZPP9omd8P4r0ouQiMxWM7H0m+aIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :message-id:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hdiztUreQiIEFh7OYzoOCFmDHdYKonm9Sgs3M2NpSGA=;
        b=vgs5z/gv3bz+kmz5SMqx/dQFdNAZg/uATDyd/KdJBM/r6EArJTFtmZv/voBL0ZQdyh
         eLWOXbjwhbmTkNhE+TR6YI5Z0otnywZlnTN+C2N5v0d1BKNV3iiiblbVR4cX0VaFfK4y
         UOTWPZwULPJCEsvFOw6KzXiby8B9Ki4X+Ow6TTD1m9dTPGqka/tmZ/T7AJbFvo9XroDe
         zeAbVqtoXChRBQnpioNb2TNbopDo4YpB8ULczpq743URsXrCDxA+bs4Rz+7WXJrkFAQK
         r5sP+lC+hhDSOUCyfh2iTPKFQpxtO78IIFzDPT1sm63U179UlZlgaB1waWwhDJvK/hmx
         9hTw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AO0yUKUQueTwLFftZCVsqtqICdpVeKX6/jQtd2/4RgVf04x57sNPKSYw
	j5UngNye9AehPpx0+6+SH+CwfA==
X-Google-Smtp-Source: AK7set8l8cabsfc1+uAcgAtB598aOF3gTM3rKsYXl1tJXPzXSmI0fPhcdlUSgo45e0YG3ZuS4Kho3Q==
X-Received: by 2002:a17:90a:c504:b0:22b:fdac:6e02 with SMTP id k4-20020a17090ac50400b0022bfdac6e02mr3385207pjt.133.1675708427240;
        Mon, 06 Feb 2023 10:33:47 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:198f:b0:219:84d6:9802 with SMTP id
 15-20020a17090a198f00b0021984d69802ls18026430pji.3.-pod-canary-gmail; Mon, 06
 Feb 2023 10:33:46 -0800 (PST)
X-Received: by 2002:a17:90b:204:b0:230:79f9:f5e0 with SMTP id fy4-20020a17090b020400b0023079f9f5e0mr596533pjb.22.1675708426155;
        Mon, 06 Feb 2023 10:33:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1675708426; cv=none;
        d=google.com; s=arc-20160816;
        b=UdcZ8dOAjveZM3GrEp7+dkmqnPTgUtLspKMTysbj08Wdvo6YCkIWXlJBjeuuUDv2PG
         MVJSeJ+Yl0d5WRaeIUqKe5wTsX0rHKjmPTN9dDN6ppaHQ5xU0PQKigQ3QLIIlkNmcjkg
         tFqyGacekfP/vZCJCRZtNTc6pR5x/tUO8+6mhLDHGhfy1kprJ2G503CT6w//5PoPpQxT
         0vCoxPPfUQkoWstceJe9bbxsVKv0y6U+0W+1ZmhL075Fc5SgYGGNWc3wrnQ4ssTZ6qWo
         iI5afAEliguAdUT3zRxqDkhPH9P62QrJGj2TKLsm9DVqAfaIWdYxxyMY1YLLAcCjONnx
         vLTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:dkim-signature;
        bh=nsA2UVbKCTYlnuVnGq05GHQ3hw+n0oCMRqJ/EEYmCkY=;
        b=NZE7GttqGTCCgYhnVRJA2y6MzbMGpBX2vQDdjIFdFzm1OO0owVDaBbTxP2I1LThjEj
         ibAQoBky0frgUj3doSZZFPLgyflDCnZ+M2P1V59viE2Zk24InCkCaeyK9qrflMMyJlKN
         lAFsAfWqReFvAKXQM3883Em0JPPZbomdLHrh4uaEZRNBjm+p0x0/qglfbFa6wlRSf9hT
         oZitXwA6hAbSWY44SOwm9a7eZFbHegaYvWJSah39O+WNZrlfNdl4pHnwmTqcNe7OU0sc
         lA74pnfkiVG0ESpurE3rD6xo3o8gXTq328yVuVYUifQL3mnj+TbQa7NePwnwCK3y2Ldw
         tbzA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a8JT7ViE;
       spf=pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id p6-20020a17090a748600b00230af530443sor1622975pjk.13.2023.02.06.10.33.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 06 Feb 2023 10:33:46 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Received: by 2002:a17:90a:1d2:b0:22c:1613:1656 with SMTP id 18-20020a17090a01d200b0022c16131656mr592787pjd.26.1675708425833;
        Mon, 06 Feb 2023 10:33:45 -0800 (PST)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id y1-20020a17090a154100b0022bfa25dd88sm9995655pja.40.2023.02.06.10.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 10:33:45 -0800 (PST)
Message-ID: <63e14809.170a0220.7fcb2.150b@mx.google.com>
Date: Mon, 6 Feb 2023 10:33:44 -0800
From: Kees Cook <keescook@chromium.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: ene_usb6250: Allocate enough memory
 for full object
References: <20230204183546.never.849-kees@kernel.org>
 <Y961c1/JIkDUqMbC@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Y961c1/JIkDUqMbC@rowland.harvard.edu>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a8JT7ViE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Feb 04, 2023 at 02:43:47PM -0500, Alan Stern wrote:
> On Sat, Feb 04, 2023 at 10:35:46AM -0800, Kees Cook wrote:
> > The allocation of PageBuffer is 512 bytes in size, but the dereferencing
> > of struct ms_bootblock_idi (also size 512) happens at a calculated offset
> > within the allocation, which means the object could potentially extend
> > beyond the end of the allocation. Avoid this case by just allocating
> > enough space to catch any accesses beyond the end. Seen with GCC 13:
> 
> In principle, it would be better to add a runtime check for overflow.  
> Doing it this way means that the code could read an invalid value.
> 
> In fact, I get the impression that this code tries to load a data 
> structure which might straddle a page boundary by reading in just the 
> first page.  Either that, or else EntryOffset is always a multiple of 
> 512 so the error cannot arise.

Yeah, I couldn't figure it out. It seems like it might move in
non-512-byte steps too sometimes? Doubling the allocation (and zero-fill
it) seemed the safest way to cover it.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/63e14809.170a0220.7fcb2.150b%40mx.google.com.

Return-Path: <usb-storage+bncBD6LRVPZ6YGRBB7IWWUQMGQEMKYVJMQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5A57CB165
	for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 19:34:01 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-41961124b15sf45218111cf.0
        for <lists+usb-storage@lfdr.de>; Mon, 16 Oct 2023 10:34:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697477640; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gvvj6lAd2rLWzEMSHr8h2TtsMbWQa1dXQVkqFQpg2crtpTYPR/dNNDlYEMFpRMh9+k
         q1iH9i1vJbhk3xdFQwOo/+/zqhT8SdTy9QU4gcTg5Y6q1xNmipGN7XQ1zfQlLeIMpUjA
         EsZLW3N621jVptggly/pys8xlz+nUQqHkmm9d6BJo/+aBAhzepNFc/iBWTF12mUbwEe6
         TqkO9U64prMOCSh1TP8Tz2KRPE7qj6zWpN9EZOlNQmH+EqGaqoYiNExlT4x2Mjl1dAGJ
         mpjlGqwYiX5aLdOa+J3Pd+HYm3umxyDN/txhKCVz6XVii6owQsS0KNO7pU3ruzG1kcoQ
         k1Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4Zqbv1LxNEfpCGwxsQYWXz/Iy7FZTyvmK7ZLohyzm2U=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=LEafX6AND8J2uFdm+umccCYwUrOyT7mh3xao2IAjMVZ49dI74TBj1DLI+G56u8r6bK
         hSrzVs74S2x6Oyjpn2SuNk7jN2OQ4MAd2i09hYZZEdHWHJQPzDcSet0uoeNJUpviyu5b
         uJ45ylPIrK1b4w+VbnOf11n77xqjx4nWuEeTBEhmhLUyCVuDE1ir0GlCpPzp6EW9Vbrt
         +KjRtmO9mJGBylKr5gN5acQ7WE9QwDZEYwWx5NMX5OdvMKd26Mqjn+9YmLE2FT/tY6bX
         efmKVdQiRJNKGmMS4dlXQQHwNOoQBXGOEg62pA6g7FP9i8pUSOZbsH+nqH71hAB39A81
         VGDg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697477640; x=1698082440; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Zqbv1LxNEfpCGwxsQYWXz/Iy7FZTyvmK7ZLohyzm2U=;
        b=iuDwx/ji4ey1Rjb+iJbA9rVVxodK5kp0shoEd5zEj0ncVzd1qlphhbNGvv0iTW7w00
         WAQfR+xTCHgBgcg/TfDcZyYT/v9GcKV2KLBjsdk37fKB2BOd2qGTZHNS3h4czHUKb1TV
         YxPsLp9qXX4Ixy+rOIXMWoWKM66u1FlkCHei4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697477640; x=1698082440;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Zqbv1LxNEfpCGwxsQYWXz/Iy7FZTyvmK7ZLohyzm2U=;
        b=MJPysCfIvF6WOiKaCLDFzqtkJ1l58UmWnywaKC3xTglUz1oCfmUaB8CEMfCUaPPD2v
         3ZLeeQcsi2SQBIWKy0KZVoBEVA2YD/wJq4iTAy2n60T6tOs6e/1yDm+hwBCZs5TUb70G
         OVMt98aqmdMkgIsPSqgZhQZElhhJFLM3XQrYeBtAh3Uu0VpIQPZNHYU0MNE2ovZm7hf1
         i3gG5qUwTybxsgx5NQuJwURu/JDH9407ORsD8LppK9a+9x4ZKX6U2URaAcQNjvt78mKT
         NBAkj7HH2lhLkGLFo9LqKqnz4ObrVoEVqUR+9rFzDrt/BFaP0K+LfDY6L0BIw0sHDEIQ
         SQ6A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yw4cL7virvtLLemGhVSkvAk6kSJEF/ihbq6Uuy2XXKjs1tJm8wa
	x8snhQgicEC83yqRwTXUCWmqeQ==
X-Google-Smtp-Source: AGHT+IFWTuSIoprgiR++WuuEqkLjZYc8ZO8iXdOA9r+wh7ShW+yDwHEOeFrK8B5PinlxSlItWggSlg==
X-Received: by 2002:a05:622a:18aa:b0:412:1fd7:dfa1 with SMTP id v42-20020a05622a18aa00b004121fd7dfa1mr30096qtc.8.1697477639382;
        Mon, 16 Oct 2023 10:33:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:5a18:b0:419:ab7e:8925 with SMTP id
 fy24-20020a05622a5a1800b00419ab7e8925ls2346921qtb.2.-pod-prod-08-us; Mon, 16
 Oct 2023 10:33:58 -0700 (PDT)
X-Received: by 2002:a05:622a:1ba9:b0:418:a58:1cd2 with SMTP id bp41-20020a05622a1ba900b004180a581cd2mr36595031qtb.51.1697477638588;
        Mon, 16 Oct 2023 10:33:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697477638; cv=none;
        d=google.com; s=arc-20160816;
        b=Jxj7CIsCpyI+/0EzVB4EQH1HS6Q9zakepzJ6G12KVpdv0e28P61lLZehznBvcTC5d0
         iGCkPEaDzDQ1h4wnbt28UzpcWXfqZyFK1xsD0Z6YZ6RiCuNiNVsGVnCAzP6PqqIo8ql5
         41gjL5CK3zyw5PIt9AVnk9GitwELq/9IT54wBQ/s5bkqtJj6zCV4b1T51f3zW4KI2QR7
         DBO1VCv0g3/NBrn/krf8dzusjD5IIxyK7y2y22rJTWWNDAPEEgcEhYW3bbHiyF5gPiTx
         0ZgOy7+DymbjybSedJynm8h3qfxSuQ6R0xTHn5UpCS3B4rUT3GvjFmkFZVqVejgBEZLh
         MouA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ySfPMMmAKZ4BKYv1k/IbTeaL+WyReVH70pwtY4dKf6Y=;
        fh=ldCGyavYp779X2ViOANHPzjiMm1aqt/1VlioTkK72aI=;
        b=S4PqFh+sQSid2DGDcBGBPGtlF547HKT27BJUM+x+Zcl65P9e0e8PWpbBe7BmhAaBG7
         HehDIo23vnER5iHPfDUG5zc9pgsvMoL26KvFN9H3quSe5N3zbIDtXXfQv0ehybipg+GI
         S1P2KbX5Psw7URIIv/b8Bz2p9+fHIbr2xxlqdRpFy2ZHXhMgwrxT+E+9cQ1tk8tAx4ej
         NOvLKOn22vBtHz0Vjhv/5YM+Lbskq3Noq+XCjKIqBuuEngU9lygr92arTQ3w5Z71gGF1
         fh5i75CQFI9el1zqkvcSSaR8GIO9q7rLPmzs+hckJjrEB+6ZXKZxCUyQZnhWc54IicZY
         rxiw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id w11-20020a05622a190b00b00417ccac55acsi5536514qtc.641.2023.10.16.10.33.58
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 16 Oct 2023 10:33:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 150486 invoked by uid 1000); 16 Oct 2023 13:33:57 -0400
Date: Mon, 16 Oct 2023 13:33:57 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, gregkh@linuxfoundation.org, oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 0/7] usb-storage,uas: Support OPAL commands
 on USB attached devices.
Message-ID: <76575d36-15d3-491b-944e-71253907cfac@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-1-gmazyland@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Mon, Oct 16, 2023 at 09:25:57AM +0200, Milan Broz wrote:
> This patchset adds support for OPAL commands (self-encrypted drives)
> through USB-attached storage (usb-storage and UAS drivers).

This is version 2 of the proposed patch set, but you didn't include the 
version number in the email Subject: lines and you didn't include the 
summary of differences from v1 below the "---" lines of the various 
patches.

Patches 5, 6, and 7 look okay.  You can add my Reviewed-by: to each of 
them.

I've got some additional comments on patch 4 (in a separate email).

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/76575d36-15d3-491b-944e-71253907cfac%40rowland.harvard.edu.

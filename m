Return-Path: <usb-storage+bncBD64ZMV5YYBRBD6N53AAMGQEYCEHG2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id ED865AAE90C
	for <lists+usb-storage@lfdr.de>; Wed,  7 May 2025 20:29:36 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4768a1420b6sf2291271cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 07 May 2025 11:29:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746642576; cv=pass;
        d=google.com; s=arc-20240605;
        b=CALdddCU0QmYghCr/evhHjN+0EwGOscz+kR7JwnUGcuPCt+tOd8tmAcrD1JkJm0wKx
         g8KEr4wqPwKxAspMoyqytD/BXAkvIEO9Bs793rT5CtEMfy0CmCFkg240TT0zg7ishhYw
         CKBSXuLUZuK/ZhvcxLJJEPAL6NchYna55tp3CtPDUNSOuKLEhoKeDw0x2e2tgIV/JMnL
         j2pVHDeYlOEIweLOwXLFo70QYl2sTmotA88TUh1NosOu4RWlz52faGYVOwpNwkpIgnPP
         cXNFa2fcl+hpKaC0zOYrRyKHTq4lUX/5IZ/l25idJVJluhuyJetwIzgtJLn7zTRE+hj+
         HtiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Y5Uw/bAVqEUlSTDmu3iW384HczUfc0jjXnMtiT7NtJE=;
        fh=GywxbELPg2mApkM7Y6EfC7A2JI/V/1HjKylSs7dbl9Y=;
        b=kHeELwvvB4n9tWAa6LmdRq+vrXI1twffH2gPa+YvBZeXJp0Xbiy+HIY3pVtA5l9wgt
         U3suMzWFNsMfi2P5YhW2Z/U8VBRVtz2n9tbHmLAgApSeM+9KEyEPZbn+EbYJOM5GB4pN
         pRWCLklreU+dkkP+gxhq96bHIROiQzEnTDxnuZgG3NhUrVmkCp6/+tF13tANRPQuSfaz
         lzmWTP5VWxSYyfDLDOMjMtjjYc3c2VG8X+r4g96gXuK6bfC9Ddwa0g5ks4JV5kd0Ms1I
         i4UnBZhXxNkZBTZsE58vxpg4RLJ/Nc1zDx3q6Z4vg+zKxZyAPIjIV1Ii9S7Vi1DNb/Ct
         rO7w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=gUF3lLkR;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746642576; x=1747247376; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y5Uw/bAVqEUlSTDmu3iW384HczUfc0jjXnMtiT7NtJE=;
        b=Lbd7zuFTZLAC2uF/I32X8ZI01LeSsM2pksg5Dl7G/alZ63sw4a4jw/6q2Y277fwJQF
         yUEJfimgWcCssBF/ApgWj/hiHxQOSmUEghbR2ssUwtf5uorqqmeUso9Q/nu1p3hFq6EF
         U8/d9zupI3rSUvjpwsMhQyjSY5UkwSLX1qLRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746642576; x=1747247376;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y5Uw/bAVqEUlSTDmu3iW384HczUfc0jjXnMtiT7NtJE=;
        b=ienjP1az/Zig8+0kIuGksORCDPFiYs/RHAsEKwGohCD1eYb63JA5nhlu46O4V8VkOx
         I2sG2fXLeTzlelBq/m3jtc7G5sCkLn0Fqk0fWMgqGD5gGFVgrLeXumttHlgi2BBODzDR
         xN7v9f594hN5GZ14oOIdaN9t5Bevw+zdlAFBkpQR3AYki/Mm2kre1FNhbxLDq7PRBrXy
         yjOkfgq/yRuWJb+GbxN0d1hZ/LNWMiQBkEqz8JwXB2mrDxPpM3y3PcoqiQzVB2DCW4a2
         YX0zL9+zoSqlOB+yKleB6LdCkqPH7IsZBsHsjBlq3ScA8gBoOIkG1o6AcSCUe8676dii
         /+qw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWJOD+m+aznGfhN+4jm2MjCjIyBXhcZE736XSRiAZ78GRzTjxpQtPHALDoRD4dATNkHPMv/ww==@lfdr.de
X-Gm-Message-State: AOJu0Yz78Bv7wsvnlAe5jHDU7xqd1w2my7FVLifLqrG+VILVGdx5M8qz
	Hi1erlX30fbxZF5fnxn91RoSJ+5Efm8iErd3KfDK8YW/Co4f0bLewjgveb6ADNY=
X-Google-Smtp-Source: AGHT+IF7bLcdt2szQXxRhQ8lzW4wBoLpur3+QHyIxddVxYfMfX+J985N874cCZ/bSjiNTMvUR45X2w==
X-Received: by 2002:ac8:5f8c:0:b0:48a:2429:9dbb with SMTP id d75a77b69052e-4922601b980mr61150181cf.22.1746642575729;
        Wed, 07 May 2025 11:29:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBHV3AmGxm7jL0S5/fpZIz1gsOhZTOhKftlKGLorN3iNyA==
Received: by 2002:a05:622a:198e:b0:476:7e35:1ce7 with SMTP id
 d75a77b69052e-4944938e122ls2661901cf.0.-pod-prod-03-us; Wed, 07 May 2025
 11:29:34 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUEqt7EXK13Sjw4ujHB1ps2pimvzbee619nK7JjzsHm37zzaO8bD3Qn2Mm+1dcg8nrlGwq2P0FVIalDPg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:3784:b0:7cc:8a39:29df with SMTP id af79cd13be357-7cc8a392ed5mr248729485a.9.1746642574560;
        Wed, 07 May 2025 11:29:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746642574; cv=none;
        d=google.com; s=arc-20240605;
        b=jO6qyamp/A9I1W6Kfs+pxHv4lG0T6h2gzVVTIvQxIJIqduD6d/IWXGKJRmScAfAS18
         NboiNJioHjbV2OVJFUxsfHDd2qPfYU9IlHSBV6PN+0lvBiD1Z9yMlQ2pkgHCAAJPL/RE
         wdHgMywaTAFlWq3GAWieds5+DaOhDAodIbaoZXNz2V7ApnPvzN93l8sdNAcP64M5t017
         +R9WBjAyirlGh4154IQcT/NSOpIEkzzbHezD7okNwjyYJlerroh0J5HNdfucn1TPiOhT
         8ludgNdQL6MRHixWlJYfKKUXekIE57tqheXs/mrQ4genTxlTiTHiF99VLXgq3+oJn5Sh
         1NnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2eLxeAZWz5DWy39hfAWzq0GbOK4A+xTpArBWabUxQtg=;
        fh=UAkq302Sv0d02IftTIwkMhxt9dYfHI6JBVUZkqv9oFY=;
        b=Ojt8XaWhW3ZzXMZafDiUaeBvGezgPKSi4YauUlT5mkzo/YbEhot5hEXA8anPSdHTwt
         lcOT/ZG8/FiVHfB+VJaqDSWGzi//BQaDgu5Z6R7+Ap+ZAe8fCiJkJ4xILBFFE9krBW6d
         eWj6Mj0IYxNJL11G5uYUr+qPRJLAeZHB33G9RlxafV+TDSScA00D2vFV2j8Ne2TO7KMv
         A4qvU6+HYvpUpCgkMGaGFRpEgH27eGIG0SiWPj+cYuJ+dlOzNNOqMllTj+b6a+WjixMV
         wEjjw5yL4Wl/QT+jcNG8V+qAwVm7IGseRpFDNdUT4ofj/zuwPeJZcVd3W2FZMsYy2RuH
         3saw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=gUF3lLkR;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7cad23d3200sor1217430485a.10.2025.05.07.11.29.34
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 07 May 2025 11:29:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXX9zf7ENfjOzliD16TO18aRdVHhtGtucquyiwEwVl2jKv4mjxsUjheXF1SaVdCaCFywJ6qbGF3AQY1uQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncuBGJt57kQbq5FP+1ThKq1OsxlwJopvf4MeqQkvgtuxheU97YOFbF4g9ZFj2/w
	ex+ovQn1Ay9SCPeoN++uWG97HLu3N3vGkaEa/XBgcC3UDWMy5TuHHVbPBe6jlljM7fHodIWLHJL
	clgaxeNqwIEGP+xBtyNiSWLDzBPA30bE4qMW+4SBHURGrCBXsNeJv4NOg/0KO0HYXVx9cIzXQPL
	D8n57Uwhvn5YfaUVnULbRSferYpkPEw2I6LLBGY+a+6BQ8894NeLapOvjk21IQY6+PYHG4qJcaE
	+ZU6cSosObizX5VDt475NmC/0iV1LZKLp/IBmYwxV35ij/GdTqh8xPxp6vUDtvDMrhYxsJ7P1g0
	aGwcYb4hgxdknolOmeWfz7a9rJtVFqKjo7w==
X-Received: by 2002:ad4:5aa2:0:b0:6f5:107c:7db2 with SMTP id 6a1803df08f44-6f5429b1457mr58288666d6.9.1746642574245;
        Wed, 07 May 2025 11:29:34 -0700 (PDT)
Received: from rowland.harvard.edu (nat-65-112-8-52.harvard-secure.wrls.harvard.edu. [65.112.8.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f542623ef8sm17522416d6.19.2025.05.07.11.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 11:29:33 -0700 (PDT)
Date: Wed, 7 May 2025 14:29:31 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jake Rice <jake@jakerice.dev>
Cc: linux-usb@vger.kernel.org, gregkh@linuxfoundation.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [RFC PATCH] usb: storage: Add blockbuffer ptr to
 info struct of sddr09 driver
Message-ID: <c71aa977-d58d-4eee-9ab9-e9fbdca121bf@rowland.harvard.edu>
References: <20250506191531.3326-1-jake@jakerice.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250506191531.3326-1-jake@jakerice.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=gUF3lLkR;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
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

On Tue, May 06, 2025 at 03:15:31PM -0400, Jake Rice wrote:
> Hi all,
> 
> This patch updates the sddr09 driver to allocate a reusable block
> buffer. Unfortunately, I don't have access to the SDDR-00 hardware
> (which I know is pretty ancient), so I'm requesting testing from anyone who does. 
> Please let me now if the patch causes any issues or improves performance.
> 
> Best,
> Jake
> 
> ---
> Currently, upon every write the block buffer is allocated and freed which is
> computationally expensive. With this implementation, a buffer pointer
> is added as a member to the info struct and allocated when the card
> information is read. The buffer is freed during desconstruction if
> necessary.

This isn't a high-priority sort of thing.  SDDR-09 is indeed very old 
and likely quite slow (by comparison with current hardware); the time 
required for the memory allocations and deallocations probably doesn't 
have much effect on the overall I/O rate.

Still, I guess it doesn't hurt to do this.  However, I don't have time 
to review the patch properly right now, and I don't have the hardware to 
test it with.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/c71aa977-d58d-4eee-9ab9-e9fbdca121bf%40rowland.harvard.edu.

Return-Path: <usb-storage+bncBD64ZMV5YYBRBRMN2PAAMGQEPFVTFOY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 6451BAA7350
	for <lists+usb-storage@lfdr.de>; Fri,  2 May 2025 15:21:10 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-7c54e9f6e00sf567360785a.0
        for <lists+usb-storage@lfdr.de>; Fri, 02 May 2025 06:21:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1746192069; cv=pass;
        d=google.com; s=arc-20240605;
        b=T+uTVreY1JlzeE2P0vePE5jlga/kNHnQBGnnQynQb42hNa3kPvY4KTlv9hDTF0nb52
         PNF204KT2iFFLMkjnTW9fx7NHak+kX8aaRqMFiu3u0mEH41Cuptl6mw3HJXsAGutndv1
         IZ6XT8cy9SKcMSgzMVB6eZzbVhVRQmkI4c1bh1mnbXcQad4cKR4JyUwBEvDQwYAaIMHu
         0p4q27BKAmhyJMnbuy3XA7NsjNn4xsSjd4arCBSYlFsS14bE2rmBfA1luvbt3kwtFv3z
         hhUylMT+0XJ+mmVktodo5p4DT/SvvrXui4nTp7uJwsLs/LtIppzxx1fMCTzXXm62NYuE
         md1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x1mrUSobHBJpgeE5HnFE+QADFEGXE4F62Y+FeLM8Was=;
        fh=Nf1f1qcvTnzIJIRo+1Cs49nB7iYLCcqWmJxiOWq1MPg=;
        b=fB+LrMtU9tlH6Ne0W7R43DSof8iS6DaiJOxYjnkTnzVEV2d7VYYUaKVGwCX/cwwDep
         B+RwEfjv5O71G6bUWMvVeEBhhBl2IPEQDbgBOkQs2bburGMs0Q8zTS14EyckqE61hyH7
         Bw2eADtEGAiqn5uCL3ZPVqbrOUX0iWiTpRR5v1j3Sx0I53xGY5OkAHmQF5mhXWgRvvKz
         8N70hGoRk091gt8M3sjcmPSnObavLF8dje9SZhlKZFlByATSjvii92KYUxcPdtNjOnTT
         p/TYVslAMftv67s7Bmbs0X9+k6aM9Md0B1oIOgyVbsIVvgJBUy3Okkq5VY8Ex8m2QAR6
         35oA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Ez+s4RDS;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1746192069; x=1746796869; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1mrUSobHBJpgeE5HnFE+QADFEGXE4F62Y+FeLM8Was=;
        b=BR11P2JjJcBjzqa61fn9/A3T9odDiuFLT5KO90EPOcxd+K7e3u/t6sh5UMiza2jOlX
         HmkVkQorqeFz0cMWaMxkgYFz0oaCtSFJv31/lJsYJiwI2SJSrKZQJobkxqXO7BvLEcKG
         OsmThGPjbY/hhCO1RU7c0i9OZe8epYgkIVDyE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746192069; x=1746796869;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1mrUSobHBJpgeE5HnFE+QADFEGXE4F62Y+FeLM8Was=;
        b=V4CmYvZzN8IAYXAy9y0LlFjlr3eTiDKFQj0/IPFDG7X3LdgYxA4XQ+YEAbfe+d8X/h
         B9Ivw1XQB/VHrJIOf3vCF3JJTClNJz03PykKZDdnTdY6oFUrBuIWKY7HRfByCiLCQ5uM
         5+8pWPCvuuknvEYuhNlNf2TqtlNHSh7tnOAhRW8uuVZDIS2MtOm+7By4E7unvpRuBPG4
         SlmDigYgspega3yFSjtZG9DlPBWRGuO4NfEIqKdU08mCEshDmD0JP/SvFgpCT3rNK396
         Unm0oz4cocuJ7qtmpseyWxD+HLYwjwyUmPS3rIFmjbeB4vEWw4d4EAmkM1oxPrm+mO+x
         oFfg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVnFYA7TvTT2mDZM8rIPcNlmEGYeRkaeCwCBb+FNVAnT9JFPtNRV3sg06dcmHE6P6AoMUto5A==@lfdr.de
X-Gm-Message-State: AOJu0YzKQB98LqvTlK7WKbhIxgG7NZHFWT1LsYAeIEVuIEbqqa6DXeky
	NXDD14e5d2dT0ilTNtmDnZJK5g7XuC1mNpl4bretkMbfMcZJQuevDKZ2ovcVEFQ=
X-Google-Smtp-Source: AGHT+IHCu2uYYqHriPMtbHoJXULO6ptCe/8viQB30pxpJLk3HGJDqaEqZphJrkhKCSr2k8SDb+nXvQ==
X-Received: by 2002:a05:620a:390e:b0:7c5:3b8d:9f2f with SMTP id af79cd13be357-7cace9d3e93mr888171685a.17.1746192069241;
        Fri, 02 May 2025 06:21:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AVT/gBE1la2Lvs0UF3cVXOVG5/0p1TRHQ0G7CU8TvHYIGMnLng==
Received: by 2002:a05:6214:5990:b0:6e8:ebb0:eed with SMTP id
 6a1803df08f44-6f508513bdels7019146d6.1.-pod-prod-00-us; Fri, 02 May 2025
 06:21:08 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqSGsYIiNamlu2alLYQhCKXxYwpGigamODslEK6ZZ5nPw2Z/QKnu3RxBx79vkKYk++3gvEWaveHUbR5g==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6214:21ac:b0:6f5:e2b:988a with SMTP id 6a1803df08f44-6f515490cd1mr46578656d6.13.1746192068244;
        Fri, 02 May 2025 06:21:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1746192068; cv=none;
        d=google.com; s=arc-20240605;
        b=AXTKyRSpGyvK8EQCgh/Jv/QXTYdJLv0XZT8vglPhFAg3aQJBnSTZTeMOcDvCDZu1v4
         TaofzpRzgNN0BPsASuDjbg/KTWvImfvOVO3DpYTQxsmKC6yt72OjLqEFF+RQtKqxOput
         PEddJQMIi08MOH7T44u/fbr8ci0a3fZMaOKu2xsPLgnyFLLCpsgmCifmmcr13lrHgvzL
         k5Tn+A5d3vJj59sZ/Oe+pYFeHb0CQRH52CaEJFQBIX3zesR0qVmty8Gi49BSb9e3HJzC
         MUGDBkDrRNh57/Ne8srEZHuVhs7LpUHwQTqAocQDMqXluym1ctTvXOPspjGzzI5WzAXO
         nVhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PR8rIhUfojOnm5GYJvzQzEEo4eH5EGtmUfEk+APf7Bc=;
        fh=+WXjbyDE3A3zWNH937j5cVi/k2K0uAN5yZOpgsuYC2A=;
        b=IqnxDlo8juIkyrzqkL/RRJ2Yl83szwAxmFESFVMHR5LV5tp/mV3bNzfkLP6I984DHW
         tgh1OV0V1pnzZcEGbhNclFd3E41zi20/b/puz8ZGEDbMDJJNRLUB3rE+ni9dJ8EJC79K
         QlD98KBz6uVQ8ov+Q1veYFajwGnm7korwSuj2A6shn7HYYlCNIIcJyYDCkYJRmEygfIm
         eG2oEIjSIUPBreH63Zhj/YQh0ELUdB0OoAu42K6pgkWL58zSqqo+yi4BPFWskPlFPM2F
         sf1JuT+L6vUvVQ/t2D5H73LxPoER3+dyeryfAHocawbKMCHKXIFkMuy4Hy1DKJvp6hnq
         N7hA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=Ez+s4RDS;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7cac851fa07sor389166585a.4.2025.05.02.06.21.08
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 02 May 2025 06:21:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUf6Y5XTvwVxSDTqENmI//tbwif8O6vct1LlbHMJ2tibLxibJ0YDclBHADZhJk92xOqZ0yvJavYcbqQdw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvRW3Y3hWsLR6WCBuhFA2wT+gmm1acofE3kq49kC1EGyWzKqHN81Z3NPKOdaT0
	/i3WE7Vzq29TtBQ/3T63DcbR52GRrVqjVMu2bkGEeAdsU7ynw2emCFoa6jpicP/wv1lhRI851FU
	O+MyWBKBLjA/XvoJnJrIkr/MpWlE1QZiww8II6SCPYcB3sxn8FQScVEnEo37W5IKg1UXHKWtPF4
	ydwPT5h+1/aQgqJHlht42iHy8svmxkrfN151g2sQECttbvdPi5MFPfAtQqSwNV35iVVEzI4Fnyu
	fuc1/gP+MioiXYjGUEamgATUgbwCxGDIuO2mvGughA==
X-Received: by 2002:a05:620a:c4f:b0:7ac:b95b:7107 with SMTP id af79cd13be357-7cace9a0b29mr888832585a.12.1746192067938;
        Fri, 02 May 2025 06:21:07 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:681:fd10::283f])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad24413edsm181273785a.99.2025.05.02.06.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:21:07 -0700 (PDT)
Date: Fri, 2 May 2025 09:21:05 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	"Juergen E. Fischer" <fischer@norbit.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-block@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-mm@kvack.org
Subject: [usb-storage] Re: [PATCH 4/7] usb-storage: reject probe of device one
 non-DMA HCDs when using highmem
Message-ID: <b4fb1b90-1996-41ff-a05a-06f952b36ce0@rowland.harvard.edu>
References: <20250502064930.2981820-1-hch@lst.de>
 <20250502064930.2981820-5-hch@lst.de>
 <2025050258-afraid-outweigh-e36c@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2025050258-afraid-outweigh-e36c@gregkh>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=Ez+s4RDS;
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

On Fri, May 02, 2025 at 09:02:57AM +0200, Greg KH wrote:
> Hopefully this pushes people to use UAS devices instead :)

If usb-storage won't work on a system then UAS won't work either.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b4fb1b90-1996-41ff-a05a-06f952b36ce0%40rowland.harvard.edu.

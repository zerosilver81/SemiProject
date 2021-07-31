package dto;

public class PostDTO {
	private int postIdx;
	private String postTitle;
	private String postContent;
	private int postLike;
	private int postCnt;
	private String postDate;
	private String postUpdate;
	private String hashtag1;
	private String hashtag2;

	public PostDTO() {

	}
	
	public PostDTO(int postIdx, String postTitle, String postContent, int postLike, int postCnt, String postDate, String postUpdate, String hashtag1,
			String hashtag2) {

		this.postIdx = postIdx;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postLike = postLike;
		this.postCnt = postCnt;
		this.postDate = postDate;
		this.postUpdate = postUpdate;
		this.hashtag1 = hashtag1;
		this.hashtag2 = hashtag2;
	}

	public int getPostIdx() {
		return postIdx;
	}

	public void setPostIdx(int postIdx) {
		this.postIdx = postIdx;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public int getPostLike() {
		return postLike;
	}

	public void setPostLike(int postLike) {
		this.postLike = postLike;
	}

	public int getPostCnt() {
		return postCnt;
	}

	public void setPostCnt(int postCnt) {
		this.postCnt = postCnt;
	}
	
	public String getPostDate() {
		return postDate;
	}

	public void setPostDate(String postDate) {
		this.postDate = postDate;
	}
	
	public String getPostUpdate() {
		return postUpdate;
	}

	public void setPostUpdate(String postUpdate) {
		this.postUpdate = postUpdate;
	}

	public String getHashtag1() {
		return hashtag1;
	}

	public void setHashtag1(String hastag1) {
		this.hashtag1 = hastag1;
	}

	public String getHashtag2() {
		return hashtag2;
	}

	public void setHashtag2(String hashtag2) {
		this.hashtag2 = hashtag2;
	}


	
	
}
